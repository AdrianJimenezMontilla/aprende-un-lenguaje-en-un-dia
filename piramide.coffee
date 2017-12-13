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
