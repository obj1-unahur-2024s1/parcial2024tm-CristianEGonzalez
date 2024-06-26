class Materia{
	var profesor
	var hechizo
	const property alumnos = []
	
	method hacerPractica(criatura){
		alumnos.forEach({ a => a.hacerHechizoA(hechizo,criatura) })
	}
	
	method anotar(alumno){
		alumnos.add(alumno)
	}
	
	method dictarMateria(){
		alumnos.forEach({ a =>
			a.aprender(hechizo)
		})
	}
	
	method hechizo() = hechizo
	
	method cambiarHechizo(nuevoHechizo){
		hechizo = nuevoHechizo
	}
	
	
}