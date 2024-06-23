////Crear un repositorio en GitHub que se llamará Ejercicios-Ciclos
////Crear un menú con las siguientes opciones:
	//Kilogramos a gramos
	//Gramos a miligramos
	//Tablas de multiplicar
	////El menú debe ser cíclico, puede utilizar cualquiera de las estructuras de repetición para la parte cíclica.
		////Debe contener una opción de salir en el menú para terminar el programa
			//El proyecto deberá subirse en un repositorio de su cuenta de GitHub, dicho repositorio debe ser público, debe adjuntar en enlace de su proyecto de GitHub.

Funcion EsperarInfinito
	Escribir "Presione cualquier tecla para continuar...."
	Esperar Tecla
Fin Funcion

Funcion kggr
	Limpiar Pantalla
	Escribir "********************************************"
	Escribir "*          CONVERTIR DE Kgs A Grs          *"
	Escribir "********************************************"
	Escribir "Ingrese el valor en Kgs:"
	Leer kg
	
	conversion <- kg * 1000
	Escribir kg, " Kgs. = ", conversion, " Grs"
	EsperarInfinito()
Fin Funcion

Funcion Grmlgrs
	Limpiar Pantalla
	Escribir "********************************************"
	Escribir "*          CONVERTIR DE Grs A Mlgrs          *"
	Escribir "********************************************"
	Escribir "Ingrese el valor en Grs:"
	Leer gr
	
	conversion <- gr * 1000
	Escribir gr, " Grs. = ", conversion, " Mlgrs"
	EsperarInfinito()
Fin Funcion


Funcion mult
	Limpiar Pantalla
	Escribir "********************************************"
	Escribir "*          Tablas de multiplicar           *"
	Escribir "********************************************"
	Escribir "Que numero de tabla de multplicar desea mostar?"
	Leer tabla

	
	Para multip <- 1 Hasta 10 Con Paso 1 Hacer
		resultado = tabla * multip
		
		Escribir tabla, "x", multip, "=", resultado
	Fin Para
	EsperarInfinito()
Fin Funcion

Funcion val <- Menu
	Limpiar Pantalla
	
	Escribir "********************************************"
	Escribir "*                    MENU                  *"
	Escribir "* 1. CONVERTIR DE Kgs A Grs                 *"
	Escribir "* 2. CONVERTIR DE Grs A Mlgrs                *"
	Escribir "* 3. Tablas de multiplicar                *"
	Escribir "* 4. Salir                                 *"
	Escribir "********************************************"
	Escribir "Escoja la opción:"
	Leer val
Fin Funcion

Algoritmo ciclos
	Repetir
		op<-Menu
		Segun op Hacer
			1:
				kggr()
			2:
				Grmlgrs()
			3:
				mult()	
			4:
				Escribir "Hasta luego...."

			De Otro Modo:
				Escribir "Opción no válida..."
		Fin Segun
	Hasta Que op = 4
	
FinAlgoritmo
