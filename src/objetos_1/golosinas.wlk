object bombon {
	var peso = 15
	
	method precio() { return 5 }
	method peso() { return peso }
	method mordisco() { peso = peso * 0.8 - 1 }
	method gusto() { return "frutilla" }
	method libreGluten() { return true }
}

object alfajor {
	var peso = 300
	
	method precio() { return 12 }
	method peso() { return peso }
	method mordisco() { peso = peso * 0.8}
	method gusto() { return "chocolate" }
	method libreGluten() { return false }
}

object caramelo {
	var peso = 5
	
	method precio() { return 1 }
	method peso() { return peso }
	method mordisco() { peso -= 1 }
	method gusto() { return "frutilla" }
	method libreGluten() { return true }
}

object chupetin {
	var peso = 7
	
	method precio() { return 2 }
	method peso() { return peso }
	method mordisco() { 
		if(peso>=2){
			peso = peso * 0.9	
		}
	}		

	method gusto() { return "naranja" }
	method libreGluten() { return true }
}

object oblea {
	var peso = 250
	
	method precio() { return 5 }
	method peso() { return peso }
	method mordisco() { 
	if (peso > 70){
		peso = peso * 0.5
	}
	else {peso = peso * 0.75}
}
	method gusto() { return "vainilla" }
	method libreGluten() { return false }
}

object chocolatin {
	var pesoInicial
	var pesoActual
	
	method pesoInicial(cuanto) { 
		pesoInicial = cuanto
		pesoActual = cuanto
	}
	method precio(){return pesoInicial*0.5}
	method mordisco() {pesoActual-=2}
	method gluten() {return false}
	method gusto(){return "chocolate"}
	
}

object golosinaBaniada {
	var golosinaInterior
	var pesoBanio = 4
	
	method baniaA(unaGolosina) { golosinaInterior = unaGolosina }
	method precio() { return golosinaInterior.precio()+pesoBanio}
	method peso() { /* completar */ }
	method mordisco() {
		golosinaInterior.mordisco()
		if (pesoBanio > 0) { pesoBanio -= 2 }
		// otra forma de hacer la cuenta: pesoBanio = (pesoBanio - 2).max(0) 
	}	
	method gusto() { return golosinaInterior.gusto() }
	method libreGluten() { /* completar */}	
}

object tuttifrutti {
	var peso=5
	var property libreGluten=false
	var gusto=
	
	method peso()=peso
	method precio()= if(libreGluten)7 else 10
	method gusto(){}
	method mordisco(){}
	
	
	
}


object frutilla{
	method siguiente()=chocolate
}

object chocolate{
	method siguiente()=naranja
}

object naranja{
	method siguiente()=frutilla
}

