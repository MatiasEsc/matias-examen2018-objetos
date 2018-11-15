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
			 lupulo = tipo
			 valor = 1000
		}
		else if(tipo == "Local"){
			 lupulo = tipo
			 valor = 800
		}
		else{
			 "No existe"
		}
	}
	
	method fermentacionEs(tipo){
		if(tipo == "Alta"){
			fermentacion = tipo
			valor = valor + (valor*0.10)
		}
		else if(tipo == "Baja"){
			fermentacion = tipo
			valor
		}
	}
	
	method ingredientesCantidad(cantidad){
		ingredientes = cantidad
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
		var property descuentoingredientemin = 0.02
		var property descuentoingredientemax = 0.2
		var property cantidadingrediente = 4
		
		method costoPorLote(){
			costolote = cantidadporlote * cerveza.valor()
		}
		
		method costoTotal(){
			if(cerveza.nombre() == "Clasica"){
			costototal =  costolote * lote
			}
			else if(cerveza.nombre() == "Lager"){
				if(cerveza.ingredientes() > cantidadingrediente){
				costototal = (costolote * lote)	
				descuento = costototal*descuentoingredientemax
				costototal = costototal - descuento
				}
				else{
				costototal = (costolote * lote)
				descuento = costototal*(descuentoingredientemin * cerveza.ingredientes())		
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
		method totalFacturado(){
			
		}
		
		method pedidosDeCerveza(arg){
			
		}
		
		method pedidoMasCaro(){
			
		}
	}
	
	class Moe inherits Distribuidora{
		
		method calcularDescuento(){
		descuentoingredientemin = 0.03
		descuentoingredientemax = 0.2
		cantidadingrediente = 5
		}
		
		method descuentoDistribuidora(){
			if(cerveza.ingredientes() > cantidadingrediente){
				descuento = costototal*descuentoingredientemax
				costototal = costototal - descuento
				}
				else{
				descuento = costototal*(descuentoingredientemin * cerveza.ingredientes())		
				costototal = costototal - descuento
				}
		}
		
		
	}
	
	
	
	//Se usa polimorfismo en el caso de "cerveza.nombre()" ya que estamos usando
	//en común para los distintos objetos creados a partir de la clase Cerveza
	//a pesar de utilizar el mismo metodo el resultado es distinto depende la cerveza.
	
	//En el proyecto usé dos clases Cerveza y Distribuidora
	//Cada cerveza tiene sus caracteristicas
	
	//	
	