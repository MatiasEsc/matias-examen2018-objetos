class Cerveza{
	var property nombre
	var property lupulo
	var property fermentacion
	var property ingredientes
	var property logistica
	var property ibu
	var property valor = 0
	
	
	method lupuloEs(tipo){
		if(tipo == "Importado"){
			 valor = 1000
		}
		else if(tipo == "Local"){
			 valor = 800
		}
		else{
			 "No existe"
		}
	}
	
	method fermentacionEs(tipo){
		if(tipo == "Alta"){
			valor = valor + (valor*0.10)
		}
		else if(tipo == "Baja"){
			valor
		}
	}
	
	method ingredientesCantidad(cantidad){
		valor = valor + (50 * cantidad)
	}
	
	method logisticaCantidad(km){
		var porcentaje = 0.2*km
		valor = valor * porcentaje 
	}
	
	method calculariIbu(az,lupuloc){
		ibu = az * lupuloc	
	}
	 
	 
}

	class Distribuidora{
		var property cantidadporlote
		var property proveedor		
		var property cerveza
		var property costolote
		var property lote
		var property descuento
		var property costototal
		
		method costoPorLote(){
			costolote = cantidadporlote * cerveza.valor()
		}
		
		method costoTotal(){
			if(cerveza.nombre() == "Clasica"){
			costototal =  costolote * lote
			}
			else if(cerveza.nombre() == "Lager"){
				if(cerveza.ingredientes() > 5){
				costototal = (costolote * lote)	
				descuento = costototal*0.2
				costototal = costototal - descuento
				}
				else{
				costototal = (costolote * lote)
				descuento = costototal*(0.02 * cerveza.ingredientes())		
				costototal = costototal - descuento
				}
				 	
			}
			else if(cerveza.nombre() == "Porter"){
				if(cerveza.logistica() > 10){
				costototal = costolote * lote
				descuento = costototal*0.1
				costototal = costototal - descuento
				}
				else{
				costototal =  costolote * lote	
				}
			}	
		}	
	}
	
	
	
	