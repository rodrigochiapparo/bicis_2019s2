class Bicicleta {
	var property rodado
	var property centimetros
	var property marca
	const accesorios = []
	
	
	method altura(){ return rodado * 2.5 + 15}
	method velocidadCrucero(){ return if (centimetros > 120) {rodado + 6} else { rodado + 2}}
	method carga(){ return accesorios.sum({ acc => acc.carga()})}
	method peso() { return rodado / 2 + accesorios.sum({ acc => acc.peso()})}
    method tieneLuz(){ return accesorios.any({acc => acc.esLuminoso()})}
    method accesoriosLivianos(){ return accesorios.filter({ acc => acc.peso() < 1}).size()}
    method accesorios(){ return accesorios}
    method agregarAcc(nuevoAcc){ accesorios.add(nuevoAcc)}
    method quitarAcc(acc){ accesorios.remove(acc)}
    
    	
}

object farolito {
	
	method peso(){ return 0.5}
	method carga(){ return 0}
	method esLuminoso(){ return true}	
	
}

object canasto {
	var property volumen
	
	method peso(){ return volumen / 10}
	method carga(){ return volumen * 2}
	method esLuminoso(){ return false}	
}

object morral {
	var property largo
	var property tieneOjoDeGato = true 
	
	method peso(){return 1.2}
	method carga(){ return largo / 3}
	method esLuminoso(){ return tieneOjoDeGato}
}

// Para agregar un nuevo tipo de accesorio hay que crear clases u objetos segun corresponda uno por uno , respetando el polimorfismo 
//entre cada uno de ellos y con los accesorios ya existentes.