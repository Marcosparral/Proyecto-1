Proceso arreglos
	
	Definir nombreProducto Como Caracter;
	definir precioUnitario Como Entero;
	Definir subtotal1 Como Entero;
	definir cantidad Como Entero;
	Definir cantidadKm Como Entero;
	Definir pesoPaquete Como Real;
	
	
	Escribir "Ingresa el nombre del producto: ";
	leer nombreProducto;
	Escribir "=======================================";
	Escribir "Ingresa el precio unitario del producto: ";
	leer precioUnitario;
	Escribir "=======================================";
	Escribir "Ingrese la cantidad que llevara: ";
	leer cantidad;
	Escribir "=======================================";
	Escribir "Ingresa cuantos km viajará el producto: ";
	leer cantidadKm;
	Escribir "=======================================";
	Escribir "Ingrese el peso del paquete: ";
	Leer pesoPaquete;
	Escribir "=======================================";
	
	
	subtotal1 <- precioUnitario * cantidad;
	
	Escribir "el subtotal es: " , subtotal1 , " pesos";
	
	
	Definir descuentosVarios Como Entero;;
	
	definir descuento10 Como Real;
	Definir descuento20 Como Real;
	Definir descuento30 Como Real;
	
	
	descuento10 <- 0.1;
	descuento20 <- 0.2;
	descuento30 <- 0.3;
	
	Definir descuento Como Real;
	
	si (cantidad >= 50) Entonces
		descuento <- subtotal1 * descuento30;
	sino 
		si (cantidad >= 20) Entonces
			descuento <- subtotal1 * descuento20;
		SiNo
			si (cantidad >= 10) Entonces
				descuento <- subtotal1 * descuento10;
			SiNo
				descuento <- 0;
			FinSi
		FinSi
		
	FinSi
	
	
	Escribir  "Tienes un descuento de ", descuento , " pesos";
	
	
	definir IVA Como Real;;
	
	IVA <- 0.19;
	IVA <- (subtotal1 - descuento) * 0.19;
	
	Escribir "El IVA a pagar es de: ", IVA , " pesos";
	
	Definir subtotal2 Como Real;
	
	subtotal2 <- (subtotal1 - descuento) + IVA;
	
	Escribir "El subtotal con el IVA incluido es de: ", subtotal2 , " pesos";
	
	Definir valor_kiloPaquete Como Entero;
	
	Definir envio Como Entero;
	
	valor_kiloPaquete <- 10;
	
	pesoPaquete <- pesoPaquete * valor_kiloPaquete;
	
	envio <- cantidadKm * pesoPaquete;
	
	Escribir "El valor por el envio es de " , envio , " pesos";
	Escribir "======================================";
	
	definir totalFinal Como Real;
	
	totalFinal <- subtotal2 + envio;
	
	EScribir "El total a pagar es de " , totalFinal , " pesos";

	
FinProceso
