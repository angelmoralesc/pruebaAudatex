<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class MdlPet extends Model
{
	protected $table = 'pet';
	public $timestamps = false;

	function newPet($name,$description,$type,$price){
		$pet = new MdlPet();
			$pet->name 		  = $name;
			$pet->description = $description;
			$pet->type        = $type;
			$pet->price       = $price;
			$pet->status      = 0;
		$pet->save();
	}

	function availablePets(){

		$pets = MdlPet::where("status","=",0)
						->get();

		return sizeof($pets);
	}

	function getPetDescription($id){
		$pet = MdlPet::find($id);

		if(sizeof($pet)){
			$pet = $pet->toArray();
			return array("success" => true,
							"description" => $pet['description']);
		}else
			return array("success" => false,
							"description" => "Pet not found");			
	}

	function soldPets(){
		$pet = MdlPet::where("status","=",1)
						->get();

		if(sizeof($pet)){
			$pet = $pet->toArray();
			return $pet;
		}else
			return array();				
	}


}