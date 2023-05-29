class Barrio {
	const property elementos = []
	
	method esCopado() = self.elementosBuenos() > self.elementosNoBuenos()
	
	method elementosBuenos(){	return elementos.count( {e => e.esBueno()} )	}
	method elementosNoBuenos(){	return elementos.count( {e => !e.esBueno()} )	}
}

class Elemento {
	method esBueno()
}

class Hogar inherits Elemento {
	const property nivelMugre = 0
	const property conformidad = 0
	
	override method esBueno() = nivelMugre <= conformidad/2  
}

class Huerta inherits Elemento {
	const property produccion = 0
	const property nivelMinimo = 0
	
	override method esBueno() = nivelMinimo < produccion
}

class Mascota inherits Elemento {
	var property salud
	
	override method esBueno() = salud>250
}