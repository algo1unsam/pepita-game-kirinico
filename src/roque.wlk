import comidas.*
import pepita.*

object roque {

	var comida = nada
	var property posicion = game.at(2, 2)

	method imagen() = "jugador.png"

	method levantarComida(comidaN) {
		if (comida==nada){
		comida = comidaN
		game.removeVisual(comidaN)
		self.apareceLa(comidaN)
		}
	}
	
	method apareceLa(comidaN){
		game.addVisualIn(comida, game.at(1.randomUpTo(9), 6.randomUpTo(9)))
	}

	method encontrarceConAve() {
		if (comida != nada) {
			pepita.come(comida)
			comida = nada
		}
	}

}

