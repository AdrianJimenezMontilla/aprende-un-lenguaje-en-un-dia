var piramide;

piramide = function(e) {
  var altura, div, espacios, i, index, index2, j, longitudDeLinea, p, planta, ref, ref1, text, texto;
  e.preventDefault();
  planta = 1;
  altura = document.getElementById("altura").value;
  longitudDeLinea = 1;
  espacios = altura;
  texto = "";
  div = document.getElementById("piramide");
  p = document.createElement("pre");
  while (planta <= altura) {
    for (index = i = 1, ref = espacios; 1 <= ref ? i <= ref : i >= ref; index = 1 <= ref ? ++i : --i) {
      texto = texto + " ";
    }
    for (index2 = j = 1, ref1 = longitudDeLinea; 1 <= ref1 ? j <= ref1 : j >= ref1; index2 = 1 <= ref1 ? ++j : --j) {
      texto += "*";
    }
    text = document.createTextNode(texto);
    div.appendChild(p);
    p.appendChild(text);
    p = document.createElement("pre");
    planta++;
    espacios--;
    longitudDeLinea += 2;
    texto = "";
  }
};
