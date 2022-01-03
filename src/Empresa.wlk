import profesionales.*
import universidades.*

class Empresa {
	var profesionales = []
	var honorarioReferencia = 0
	
	method agregarProfesional(unProfesional){
		profesionales.add(unProfesional)
	}
	
	method agregarProfesionales(unaListaDeProfesionales) {
		profesionales.addAll(unaListaDeProfesionales)
	}
	
	
	method cuantosEstudiarionEn(unaUniversidad) {
		return profesionales.count( { p => p.universidad()==unaUniversidad  })
	}
	
	method profesionalesMasCaros(){
		return profesionales.filter( { p => p.honorarios() >= honorarioReferencia})
	}
	
	method formadoras() {
		return profesionales.map ( {p=> p.universidad() }).asSet()
	}
	
	method masBarato() {
		return profesionales.min( { p=> p.honorarios()})
	}
	
	method genteAcotada() {
		return profesionales.all( { p=>p.provinciaPuedeTrabajar().size() <= 3})	
	}
	
}
