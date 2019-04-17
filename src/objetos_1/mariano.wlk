// las llaves las pongo para crear un bloque ( objeto )
import golosinas.*
object mariano {
	var golosinas = #{}	
	method comprar(golosina) {golosinas.add(golosina)}
	method desechar(golosina) {golosinas.remove(golosina)}
	
	method golosinas() { 
		return golosinas
	}
	
	method probarGolosinas() { 
		golosinas.forEach({golosina => golosina.mordisco()})
		
	}
	
	method hayGolosinaSinTACC() {
		return golosinas.any({golosina => golosina.esLibreDeGluten()})
	}
	
	method preciosCuidados(){
		return golosinas.all({golosina => golosina.precio() <= 10})
	}
	
	method golosinaDeSabor(unSabor){
		return golosinas.find { golosina => golosina.sabor() == unSabor}
	}
	
	method golosinasDeSabor(unSabor){
		return golosinas.filter { golosina => golosina.sabor() == unSabor}
	}
	
	method sabores(){
		return golosinas.map { golosina => golosina.sabor()}.asSet()
	}
	
	method golosinaMasCara(){
		return golosinas.max { golosina => golosina.precio() }
	}
	
	method pesoGolosina(){
		return golosinas.sum { golosina => golosina.peso()}
	}
	
	
	method golosinasFaltantes(golosinasDeseadas){
		
	}


}

