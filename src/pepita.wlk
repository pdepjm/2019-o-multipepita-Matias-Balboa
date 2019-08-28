object pepita {
	var energia = 100

	method estaCansada() {
		return energia < 50
	}

	method vola(kms) {
		energia -= 10 + kms
	}object pepita {
	var energia = 100

	method estaCansada() {
		return energia < 50
	}

	method vola(kms) {
		energia -= 10 + kms
	}

	method come(comida) {
		energia = energia + comida.energiaQueOtorga()
	}
	
	method estaFeliz(){
		return energia.between(500,1000)
	}
	
	method cuantoQuiereVolar(){
		var energiaModificada = energia/5
		
		if(energia.between(300,400)){
			energiaModificada = energiaModificada + 10
		}
		 if(energia%20 == 0){		
			energiaModificada = energiaModificada + 15
		}
		energia = energiaModificada 
		return energiaModificada
	}
	
	method salirAComer(){
	self.vola(5)
	self.come(alpiste)
	self.vola(5)
	
	}
	
	method haceLoQueQuieras(){
		if(self.estaCansada()){
			self.come(alpiste)
		}if(self.estaFeliz()){
			self.vola(8)
			
		}
	}
	
	method entrenar(){
		self.vola(10)
		self.come(alpiste)
		self.vola(5)
		self.haceLoQueQuieras()
	}
}

object alpiste {
	var gramos = 10
	
	method energiaQueOtorga() { 
		return 4 * gramos
	}
	
	method gramos(nuevosGramos) {
		gramos = nuevosGramos
	}
}

object mijo {
	var energia = 0
	method mojarse(){
		energia = energia + 15
	}
	
	method secarse(){
		energia = energia + 20
	}
	
	method energiaQueOtorga() {
		return energia
	}
}

object canelones {
	var energia = 20
	
	}

	method ponerSalsa(){
		energia = energia + 5
	}
	
	method sacarSalsa(){
		energia = energia - 5 
	}
	
	method agregarQueso(){
		energia = energia + 7	
	}

	method sacarQueso(){
		energia = energia - 7	
	}
		
	method energiaQueOtorga() {
		return energia
	}
}

object manzana {
	method energiaQueOtorga() { 
		return 50
	}	
}