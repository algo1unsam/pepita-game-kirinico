import comidas.*
import pepita.*

object roque {

	var comida = 0 // TODO como cero?!?!?! OBJETOS!!! usar objetos
	var property posicion = game.at(2, 2)

	method imagen() = "jugador.png"

	method levantarComida(comidaN) {
		comida = comidaN
		game.removeVisual(comidaN)
		self.apareceLa(comidaN)
	}

	method apareceLa(comidaN) {
		game.addVisualIn(comida, game.at(1.randomUpTo(9), 6.randomUpTo(9)))
	}

	// TODO encontrarSe ;)
	method encontrarceConAve() {
		// TODO usar objetos
		if (comida != 0) {
			// TODO de donde sale pepita? debería venir por parámtero
			// pensá que podría ser otra ave 
			pepita.come(comida)
			// TODO usar null
			comida = 0
		}
	}

}

