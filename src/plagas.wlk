import elementos.*


class Plaga {
	var property poblacion = 0
	
	method nivelDeDanio()
	method transmitenEnfermedad() = poblacion >= 10
	method atacar(){ poblacion =+ poblacion*0.1}
	
	method esAbstracta()
}

class Cucarachas inherits Plaga {
	var property peso = 0
	var property pesoPromedio = (peso*poblacion)/poblacion
	
	override method nivelDeDanio() = poblacion/2
	
	override method transmitenEnfermedad(){	return super() and pesoPromedio >= 10	}
	
	override method atacar(){
		super()
		peso =+2
	} 
}

class Mosquitos inherits Plaga {
	override method nivelDeDanio() = poblacion
	
	override method transmitenEnfermedad() = super() and poblacion % 3 == 0
}

class Pulgas inherits Plaga {
	override method nivelDeDanio() = poblacion*2
	
}

class Garrapatas inherits Plaga {
	override method nivelDeDanio() = poblacion*2
	override method atacar(){	poblacion =+ poblacion*0.2	}
}
