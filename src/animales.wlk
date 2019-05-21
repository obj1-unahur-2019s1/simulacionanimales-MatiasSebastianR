import wollok.game.*

class Vaca {
	var property position = game.at(7,7)
	const property image = "vaca.gif"
	var peso = 50
	var tieneSed=false
	var property hambrienta = false
	
	
	method comer(cantidad){ if (hambrienta) {  peso += cantidad / 2} }
	
	method peso() { return peso }
	
	method beber() {peso-=1  tieneSed = true}
	
	method movimiento() { if (peso > 50) { peso*5 /100 } }

	method tienehambre() { if (peso < 200) { hambrienta = true }

}

class Gallina {
	var property position = game.at(1,1)
	const property image = "granGallina.jpg"
	var property peso = 4
	var comidas = 0
	
	method comer() { if (comidas==2 or comidas==5) 
		{ return "tengo sed"} else { return "no tengo sed"}
	}
	
	method beber(){     }
}
