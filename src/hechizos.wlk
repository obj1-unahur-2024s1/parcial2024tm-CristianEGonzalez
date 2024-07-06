import criaturas.*
import estudiantes.*
import casas.*
import materias.*

class Hechizo{
	var nivelDeDificultad
	
	method reduccionDeSalud() = nivelDeDificultad + 10
	
	method requerimiento(estudiante) =
		estudiante.habilidad() >= nivelDeDificultad 

	method consecuencia(estudiante){}
}

class Imperdonable inherits Hechizo{
	const danioAutoinflingido
	
	override method reduccionDeSalud() = super() * 2
	
	override method consecuencia(estudiante){estudiante.disminuirSalud(danioAutoinflingido)}
}

class Sectum inherits Hechizo{
	override method requerimiento(estudiante) =
		!estudiante.esPeligroso()
	
	override method consecuencia(persona){persona.disminuirHabilidad()}
	
}

class OrbeFulminante inherits Hechizo{
	override method requerimiento(estudiante) =
		estudiante.esExperimentado() and estudiante.esSangrePura()
		
	override method reduccionDeSalud() = super() * 100

	override method consecuencia(estudiante){
		estudiante.cambiarDeCasa()
		//Deja al estudiante en 1 de salud
		estudiante.disminuirSalud(estudiante.salud()-1) 
	}

}






