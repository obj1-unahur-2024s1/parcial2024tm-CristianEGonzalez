import estudiantes.*

class Criatura{
	var salud
	
	method salud() = salud
	
	method recibir(hechizo){
		self.disminuirSalud(hechizo.reduccionDeSalud())
	}
	
	method disminuirSalud(cantidad){
		salud = 0.max(salud - cantidad)
	}
	
	method aumentarSalud(cantidad){
		salud += cantidad
	}
}

class Inmune inherits Criatura{
	override method recibir(hechizo){}
}
