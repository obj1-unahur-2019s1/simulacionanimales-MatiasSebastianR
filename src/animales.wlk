import wollok.game.*

class Vaca {
	var property position = game.at(7,7)
	const property image = "vaca.gif"
	var peso = 50
	var tieneSed=false
	var property hambrienta = false
	
	
	method sediento(cantidad){ if (hambrienta) {  peso += cantidad / 2} }
	
	method comer(cuanto) { if (not self.tieneHambre()) { 
				self.error("no tengo hambre") }
	}
	
	method peso() { return peso }
	
	method beber() {peso-=1  tieneSed = true}
	
	method movimiento() { peso = 50.max(peso * 0.95) }

	method tieneHambre() { peso < 200 hambrienta = true }
	
	method subir() { position = position.up(1)}

}

class Gallina {
	var property position = game.at(1,1)
	const property image = "granGallina.jpg"
	var property peso = 4
	var comidas = 0
	
	method comer() { if (comidas==2 or comidas==5) 
		{ return "tengo sed"} else { return "no tengo sed"}
	}
	
	method tieneHambre() { return comidas % 2 == 0 }
	
	method beber(){     }
}

class Comedero(){
	var property comida = 0
	
	method
	
	
	

}