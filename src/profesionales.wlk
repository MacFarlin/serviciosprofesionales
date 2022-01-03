import universidades.*
class Vinculados {
	var universidad
	
	method universidad() {
		return universidad
	}
	
	method universidad(unaUniversidad) {
		universidad = unaUniversidad
	}
	
	method provinciaPuedeTrabajar() {
		return [universidad.provincia()]
	}
	
	method honorarios() {
		return universidad.honorariosRecomendados()
	}
	
}

class Litoral{
	var universidad
	
	method universidad() {
		return universidad
	}
	
	method universidad(unaUniversidad) {
		universidad = unaUniversidad
	}
	
	method provinciaPuedeTrabajar() {
		return ["Entre Rios", "Santa Fe" , "Corrientes"]
	}
	
	method honorarios() {
		return 3000
	}
	
	
}

class Libre {
	var universidad
	var provincias = []
	var honorarios = 0
	
	method universidad() {
		return universidad
	}
	
	method universidad(unaUniversidad) {
		universidad = unaUniversidad
	}
	
	method provinciaPuedeTrabajar() {
		return provincias
	}
	
	method provinciaPuedeTrabajar(unaLista) {
		provincias.addAll(unaLista)
	}
	
	
	
	method honorarios() {
		return honorarios
	}
	method honorarios(unValor) {
		honorarios = unValor
	}
}