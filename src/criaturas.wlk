// < >
import casas.*
import estudiantes.*

class Criatura{
	var salud
	
	method recibir(hechizo){
		salud -= hechizo.reduccionDeSalud()
	}
}
