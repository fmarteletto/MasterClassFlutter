// Uma das coisas mais úteis que aprendemos no ensino médio é a "Regra de 3".
// Consiste quando temos 3 valores e precisamos saber o quarto.
// Geralmente temos dois grupos, e o calculo é feito multiplicando paralelamente
//os valores entre os dois grupos. Ex:
// --
// Grupo1.1             Grupo1.2
//                    X
// Grupo2.1            Grupo2.2
// --
// Grupo1.1 x Grupo2.2 = Grupo2.1 x Grupo1.2

// Sabendo disso, crie uma função que receba 4 argumentos opcionais e que
// retorne a resolução da regra de 3, levando em consideração que será considerado o
// argumento vário como valor a ser encontrado, logo, poderá ter apenas um valor
// necessáriamente "vazio".

void main() {
  double valorA = 16;
  double valorB = 24;
  double valorC = 10;
  var resultado = calculoRegraTres(valorA, valorB, valorC);
  print('Resultado $resultado');
}

double calculoRegraTres([double a = 0, double b = 0, double c = 0]) {
  var bc = b * c;
  return bc / a;
}
