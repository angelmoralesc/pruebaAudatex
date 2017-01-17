<?php
namespace App\Http\Controllers;

use Illuminate\Routing\Controller as BaseController;
use Illuminate\Http\Request;
use App\MdlPet;

class CtrPet extends Controller{

	function newPet(Request $request){

		$name 		 = $request->input('name');
		$description = $request->input('description');
		$type        = $request->input('type');
		$price       = $request->input('price');

		if($type == 'D' || $type == 'C' || $type == 'O'){
			with(new MdlPet)->newPet($name,$description,$type,$price);
			$result = array("success"=>true);
		}else{
			$result = array("success" => false,
							"message" => "incorrect type");
		}	

		return response()->json($result);
	}

	function availablePets(){

		$availablePets = with(new MdlPet)->availablePets();

		$result = array("success" => true,
						"availablePets" => $availablePets);

		return response()->json($result);
	}

	function getPetDescription(Request $request){

		$id = $request->input('id');
		
		$petDescription = with(new MdlPet)->getPetDescription($id);

		$result = array("success" => $petDescription["success"],
										"petDescription" => $petDescription["description"]);
		return response()->json($result);
	}

	function soldPets(){

		$soldPets = with(new MdlPet)->soldPets();

		if(sizeof($soldPets)){
			$result = array("success" => true,
										"objects" => $soldPets);
		}else{
			$result = array("success" => false,
							"message" => "not available data" );
		}		

		return response()->json($result);
	}

}
