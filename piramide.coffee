var altura, espacios, i, index, index2, j, longitudDeLinea, ref, ref1;

altura = 5;

longitudDeLinea = 1;

espacios = altura - 1;

while (planta <= altura) {
  for (index = i = 1, ref = espacios; 1 <= ref ? i <= ref : i >= ref; index = 1 <= ref ? ++i : --i) {
    pintarespacios;
  }
  for (index2 = j = 1, ref1 = longitudDeLinea; 1 <= ref1 ? j <= ref1 : j >= ref1; index2 = 1 <= ref1 ? ++j : --j) {
    pintarelleno;
  }
  saltolinea;
  planta++;
  espacios--;
  longitudDeLinea += 2;
}
