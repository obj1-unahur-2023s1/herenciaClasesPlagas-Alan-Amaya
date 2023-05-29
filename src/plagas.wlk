import elementos.*


class Plaga {
	var property poblacion = 0
	
	method nivelDeDanio()
	method transmitenEnfermedad() = poblacion >= 10
}

class Cucarachas inherits Plaga {
	const property peso = 0
	
	override method nivelDeDanio() = poblacion/2
	
	override method transmitenEnfermedad(){	return super() and (peso*poblacion)/poblacion >= 10	} 
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
	
}
