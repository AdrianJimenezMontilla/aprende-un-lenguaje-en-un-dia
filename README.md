## Miembros del grupo Relaxing Cup of Cafe con Leche

* Adrián Jimenez Montilla
* Guillermo García Fernández

## Lenguaje de programación

* Coffescript

## Información sobre el lenguaje

CoffeeScript es un lenguaje de programación que se compila a JavaScript. El lenguaje añade azúcar sintáctico inspirado en Ruby, Python y Haskell2 para mejorar la brevedad y la legibilidad de JavaScript, y añade características más sofisticadas, como la comprensión de listas y la coincidencia de patrones. CoffeeScript normalmente se compila a JavaScript y los programas se pueden escribir por lo general con un tercio menos de líneas de código sin ningún efecto en el rendimiento ni en el tiempo de ejecución. A partir del 16 de marzo de 2011, CoffeeScript ha estado en la lista de los proyectos más visitados en GitHub, y al 27 de julio 2012 es el undécimo lenguaje más popular en GitHub.

El lenguaje tiene un seguimiento relativamente grande por parte de la comunidad Ruby. El soporte a CoffeeScript está incluido en Ruby on Rails desde su versión 3.1. Además, Brendan Eich ha hecho referencia a CoffeeScript como una influencia en sus pensamientos sobre el futuro de JavaScript.

## Herramientas de desarrollo

Vamos a usar Sublime Text para escribir, para la comprobación de los programas usaremos la página http://coffeescript.org
en la cual podremos ejecutar el código de coffescript.

## Poniendo en práctica el lenguaje

Pon en práctica el lenguaje de programación realizando los siguientes ejercicios. Para cada uno de los ejercicios, pega el código fuente de la solución y una captura de pantalla.

### 1. ¡Hola mundo!

````coffeeScript
alert "¡Hola, Mundo!"
````

### 2. Pirámide

Dada una altura introducida por el usuario, realiza un programa que pinte una pirámide a base de asteriscos con la altura indicada.

````coffeeScript
piramide = (e) ->
  e.preventDefault()
  planta = 1
  altura = document.getElementById("altura").value  
  longitudDeLinea = 1
  espacios = altura
  texto = ""
  div = document.getElementById "piramide"
  p = document.createElement "pre"
  while (planta <= altura)
    for index in [1..espacios]
      texto = texto + " "
    for index2 in [1..longitudDeLinea]
      texto +="*"
    text = document.createTextNode texto
    div.appendChild p
    p.appendChild text
    p = document.createElement "pre"
    planta++
    espacios--
    longitudDeLinea += 2
    texto = ""
   return
````


![Salida de Piramide](https://github.com/AdrianJimenezMontilla/aprende-un-lenguaje-en-un-dia/blob/master/piramide.jpg "Coffee Piramide")


### 3. Arrays y números aleatorios

Realiza un programa que rellene un array (o una estructura similar) con 20 números enteros aleatorios entre 1 y 100 y que seguidamente los muestre por pantalla. A continuación, se deben pasar los números primos a las primeras posiciones del array y los no primos a las posiciones restantes. Muestra finalmente el array resultado.

````coffeeScript
numeros = []
finalFor = 0
for index in [0..19]
	numeros[index] = Math.floor(Math.random() * 100) + 1

#Pintamos el array Original

for index in [0..19]
	div = document.getElementById "ao" + index 
	div.innerHTML = numeros[index]

# Reordenamos el array poniendo los primos primero
index = numeros.length - 1
while (index >= finalFor)
	esPrimo = true
	divisor = 2
	numeroActual = numeros[index]
	
	#Comprobamos si el número es primo o no
	while ((esPrimo) && (divisor < Math.sqrt(numeroActual)))
		if ((numeroActual % divisor) != 0) then divisor++ else esPrimo = false

	if (esPrimo)
		for j in [index..1] by -1
			numeros[j] = numeros[j - 1]
		numeros[0] = numeroActual
		finalFor++
	index--

finalFor--

#Pintamos el array tras mover los primos
div = document.getElementById "arrayFinal"
for index in [0..19]
	div = document.getElementById "af" + index 
	if (index <= finalFor - 1) then div.className = 'primo' else div.className ='noprimo'
	div.innerHTML = numeros[index]
````

![Salida de Array](https://github.com/AdrianJimenezMontilla/aprende-un-lenguaje-en-un-dia/blob/master/array.jpg "Coffee Array")

## Presentación de resultados

Cada equipo explicará al resto de la clase lo aprendido durante la realización del ejercicio. Todos los miembros de cada equipo deben participar en la explicación. Se puede utilizar como material de base para la presentación el repositorio de GitHub.

## Recompensa

* Todos los alumnos que realicen correctamente la actividad tendrán 0'25 puntos extra en la nota del trimestre.

* Los miembros del equipo más votado ganarán un premio.

:star: Si te ha gustado este ejercicio, dale una estrellita al [repositorio original](https://github.com/LuisJoseSanchez/aprende-un-lenguaje-en-un-dia).

