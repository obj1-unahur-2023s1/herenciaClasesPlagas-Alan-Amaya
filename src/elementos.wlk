import plagas.*

class Barrio {
	const property elementos = []
	
	method esCopado() = self.elementosBuenos() > self.elementosNoBuenos()
	
	method elementosBuenos(){	return elementos.count( {e => e.esBueno()} )	}
	method elementosNoBuenos(){	return elementos.count( {e => !e.esBueno()} )	}
}

class Elemento {
	method esBueno()
	
	method sufrirAtaque(plaga){ plaga.atacar()}
}

class Hogar inherits Elemento {
	var property nivelMugre = 0
	const property conformidad = 0
	
	override method esBueno() = nivelMugre <= conformidad/2
	
	override method sufrirAtaque(plaga){	
		nivelMugre =+ plaga.nivelDeDanio()	
		super(plaga)
	}
}

class Huerta inherits Elemento {
	var property produccion = 0
	const property nivelMinimo = 0
	
	override method esBueno() = nivelMinimo < produccion
	
	override method sufrirAtaque(plaga){
		produccion =- plaga.nivelDeDanio()*0.1
		if (plaga.transmitenEnfermedad()) {	produccion =- 10	}
		super(plaga)
	}
}

class Mascota inherits Elemento {
	var property salud
	
	override method esBueno() = salud>250
	
	override method sufrirAtaque(plaga){
		if (plaga.transmitenEnfermedad()){	salud =- plaga.nivelDeDanio()}
		super(plaga)
	}
}