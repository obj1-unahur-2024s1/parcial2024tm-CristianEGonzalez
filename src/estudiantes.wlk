import criaturas.*
import casas.*

class Estudiante{
	var salud
	var property habilidad
	var casa
	const property hechizos = []
	const sangrePura
	
	method salud() = salud
	
	method inscribirse(materia){
		self.aprender(materia.hechizo())
		habilidad += 1
		materia.anotar(self)
	}
	
	method aprender(hechizo){
		hechizos.add(hechizo)
	}
	
	method hacerHechizoA(hechizo,alguien){
		if(self.conoce(hechizo) and self.puedeUsar(hechizo)){
			alguien.recibir(hechizo)
			hechizo.consecuencia(self)
		}else{
			self.error("No tienes lo necesario para ejecutar este hechizo")
		}
	}
	
	method puedeUsar(hechizo) = hechizo.requerimiento(self)
	
	method conoce(hechizo){ return
		hechizos.contains(hechizo)
	}
	
	method esPeligroso() = casa.peligroso(self) and salud > 0
	
	method esExperimentado() = habilidad > 10
	
	method esSangrePura() = sangrePura
	
	method recibir(hechizo){
		self.disminuirSalud(hechizo.reduccionDeSalud())
	}
	
	method disminuirSalud(cantidad){
		salud -= cantidad
	}
	
	method aumentarSalud(cantidad){
		salud += cantidad
	}
	
	method cambiarDeCasa(){
		const casas = [gryffindor,slytherin,ravenclaw,hufflepuff]
		casas.remove(casa)
		casa = casas.anyOne()
	}
	
}