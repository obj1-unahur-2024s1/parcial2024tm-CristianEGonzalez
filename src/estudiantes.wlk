import criaturas.*
import casas.*
import hechizos.*
import materias.*

class Estudiante{
	var salud
	var habilidad
	var casa
	const property hechizos = []
	const property esSangrePura
	
	method salud() = salud
	method casa() = casa
	method habilidad() = habilidad
	
	method aprender(hechizo){
		hechizos.add(hechizo)
	}
	
	method aumentarHabilidad(){
		habilidad += 1
	}
	method disminuirHabilidad(){
		habilidad -= 1
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
	
	method recibir(hechizo){
		self.disminuirSalud(hechizo.reduccionDeSalud())
	}
	
	method disminuirSalud(cantidad){
		salud = 0.max(salud - cantidad)
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