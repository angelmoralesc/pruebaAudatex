
## API tienda de mascotas ##

- Agregar nueva mascota
	-url : /public/api/newPet
	-recibe por post
		- name: nombre de la mascota
		- description: descripcion de la mascota
		- type: tipo de mascota(D=perro,C=gato,O=otro)
		- price: precio de la mascota

- Total de mascotas disponibles
	-url : /public/api/availablePets
	-no recibe ningun dato

- Obtener descripcion de la mascota a partir de su id
	-url : /public/api/getPetDescription
	-recibe por post
		- id: id de la mascota
		
- Obtener las mascotas vendidas
	-url : /public/api/soldPets
	-no recibe ningun dato