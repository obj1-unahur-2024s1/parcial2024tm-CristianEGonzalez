class Materia{
	var profesor
	var hechizo
	const property alumnos = []
	
	method hechizo() = hechizo
	
	method hacerPractica(criatura){
		alumnos.forEach({ a => a.hacerHechizoA(hechizo,criatura) })
	}
	
	method anotar(alumno){
		alumnos.add(alumno)
	}
	
	method dictarMateria(){
		alumnos.forEach({ a =>
			a.aprender(hechizo)
			a.aumentarHabilidad()
		})
	}
	
	method cambiarHechizo(nuevoHechizo){
		hechizo = nuevoHechizo
	}
	
	
}