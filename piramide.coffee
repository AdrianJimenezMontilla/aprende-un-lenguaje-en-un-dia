altura = 5
longitudDeLinea = 1
espacios = altura - 1
while (planta <= altura)
  for index in [1..espacios]
    pintarespacios
  for index2 in [1..longitudDeLinea]
    pintarelleno
  saltolinea
  planta++
  espacios--
  longitudDeLinea += 2
