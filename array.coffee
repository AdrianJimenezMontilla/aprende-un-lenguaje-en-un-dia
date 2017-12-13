run = (div, numero) ->
    div.innerHTML = numero

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
			
#Pintamos el array tras mover los primos
div = document.getElementById "arrayFinal"
for index in [0..19]
	div = document.getElementById "af" + index 
	if (index <= finalFor) then div.className = 'primo' else div.className ='noprimo'		
	setTimeout(run(div, numeros[index]), 1000)
