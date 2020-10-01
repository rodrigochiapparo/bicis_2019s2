import bicis.*
class Depositos {
	
	const bicicletas = []
	
	
	method bicicletas(){return bicicletas}
	method agregarBici(bici){ bicicletas.add(bici)}
	method quitarBici(bici){ bicicletas.remove(bici)}
	method bicisRapidas(){ return bicicletas.filter({ b => b.velocidadCrucero() > 25})}
	method marcasDeBicis(){ return bicicletas.map({b => b.marca()}).asSet()}
	method esNocturno(){ return bicicletas.all({ b => b.tieneLuz()})}
	method tieneBiciParaLlevarCarga(kilos){ return bicicletas.any({ b => b.carga() > kilos})}
	method marcaBiciMasRapida(){ return bicicletas.max({ b => b.velocidadCrucero()}).marca()}
	method cargaTotalBiciLarga(){ return bicicletas.filter({ b => b.centimetros() > 170 }).sum({ b => b.carga()})}
	method bicisSinAccesorios(){ return bicicletas.count({ b => b.accesorios().size() == 0 })}
	method esCompanieraDe(bici){ 
		return bicicletas.filter({ b => b.marca() == bici.marca()}).filter({ b => b.centimetros() - bici.largo().between(0.10)})
	}
	
}