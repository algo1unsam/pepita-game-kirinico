import comidas.*
import pepita.*

object roque {

	var comida = 0
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

	method encontrarceConAve() {
		if (comida != 0) {
			pepita.come(comida)
			comida = 0
		}
	}

}

