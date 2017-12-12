numeros = [];
finalFor = 0;
for index in [1..20]
	numeros[index] = Math.floor(Math.random() * 100) + 1;

#Pintamos el array Original
alert "Array Original: " + numeros.toString();
original = "Array Original: " + numeros.toString();

# Reordenamos el array poniendo los primos primero
for index in [1..20]
	esPrimo = true;
	divisor = 2;
	numeroActual = numeros[index];

	#Comprobamos si el número es primo o no
	while ((esPrimo) && (divisor < Math.sqrt(numeroActual)))
		if ((numeroActual % divisor) != 0)
			divisor++;
		else
			esPrimo = false;
		if (esPrimo)
			for index2 in [index..1] by -1
				numeros[index2] = numeros[index2 - 1];
				
			numeros[0] = numeroActual;
			finalFor++;
			
#Pintamos el array tras mover los primos
alert original + "\nArray Con Primos al inicio: " + numeros.toString();