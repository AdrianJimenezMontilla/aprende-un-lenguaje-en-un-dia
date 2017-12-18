var div, divisor, esPrimo, finalFor, i, index, j, k, l, m, numeroActual, numeros, ref;

numeros = [];

finalFor = 0;

for (index = i = 0; i <= 19; index = ++i) {
  numeros[index] = Math.floor(Math.random() * 100) + 1;
}

//Pintamos el array Original
for (index = k = 0; k <= 19; index = ++k) {
  div = document.getElementById("ao" + index);
  div.innerHTML = numeros[index];
}

// Reordenamos el array poniendo los primos primero
index = numeros.length - 1;

while (index >= finalFor) {
  esPrimo = true;
  divisor = 2;
  numeroActual = numeros[index];
  
  //Comprobamos si el número es primo o no
  while (esPrimo && (divisor < Math.sqrt(numeroActual))) {
    if ((numeroActual % divisor) !== 0) {
      divisor++;
    } else {
      esPrimo = false;
    }
  }
  if (esPrimo) {
    for (j = l = ref = index; l >= 1; j = l += -1) {
      numeros[j] = numeros[j - 1];
    }
    numeros[0] = numeroActual;
    finalFor++;
  }
  index--;
}

finalFor--;

//Pintamos el array tras mover los primos
div = document.getElementById("arrayFinal");

for (index = m = 0; m <= 19; index = ++m) {
  div = document.getElementById("af" + index);
  if (index <= finalFor - 1) {
    div.className = 'primo';
  } else {
    div.className = 'noprimo';
  }
  div.innerHTML = numeros[index];
}
