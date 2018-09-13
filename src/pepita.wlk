import ciudades.*
import roque.*

object pepita {

	var property energia = 100
	var property ciudad = buenosAires
	var property posicion = game.at(3, 3)

	method imagen() {
		if (energia < 10) {
			return "pepitaCanchera.png"
		} else if (energia > 100) {
			return "pepita-gorda-raw.png"
		} else {
			return "pepita.png"
		}
	}

	method come(comida) {
		energia = energia + comida.energia()
	}

	method volaHacia(unaCiudad) {
		if (ciudad != unaCiudad) {
			self.move(unaCiudad.posicion())
			ciudad = unaCiudad
		} else {
			game.say(self, "ya estoy en la ciudad")
		}
	}

	method puedeVolar(distancia) = self.energiaParaVolar(distancia) > energia

	method energiaParaVolar(distancia) = 15 + 5 * distancia

	method move(nuevaPosicion) {
		// TODO 10 está harcodeado, acá hay que verificar si puedeVolar(), que veo que lo tenes hecho ;P
		if (energia > 10) {
			energia -= self.energiaParaVolar(posicion.distance(nuevaPosicion))
			self.posicion(nuevaPosicion)
		} else game.say(self, "dame de comer primero")
	}

	method teEncontro(alguien) {
		// TODO roque? y si hubiera otro personaje? acá tenes que usar le parámtro!!!!!
		roque.encontrarceConAve()
		game.say(alguien, "HOLA")
	}

}

