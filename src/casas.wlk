import criaturas.*
import estudiantes.*

//class Casa{
//	method peligrosos()
//}

object gryffindor{
	method peligroso(estudiante) = false
}
object slytherin{
	method peligroso(estudiante) = true 
}
object ravenclaw{
	method peligroso(estudiante) = estudiante.esExperimentado()
}
object hufflepuff{
	method peligroso(estudiante) = estudiante.esSangrePura()
}