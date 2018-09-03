import comidas.*
import pepita.*

object roque {

	var comida = null
	var property posicion = game.at(2, 2)

	method imagen() = "jugador.png"

	method levantarComida(comidaN) {
		if (comida == null) {
			game.addVisualIn(comidaN, posicion.up(1))
		}
		game.removeVisual(comidaN)
		comida = comidaN
	}

	method encontrarceConAve() {
		if (comida!=null){
			pepita.come(comida)
			comida = null
		}
	}

}

