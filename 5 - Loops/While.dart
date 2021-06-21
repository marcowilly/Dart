void main() {
  print('Loops: While e doWhile');

  //While faz o teste antes da execucao
  var numero = 5;
  while (numero > 0) {
    print('While: ${numero--}');
  }

  print('');

  // Faz a execução e testa depois
  var contagem = 1;
  do {
    print('doWhile: ${contagem++}');
  } while (contagem <= 3);

  int multiplo = 4;
  int minimo = 10;
  int maximo = 20;
  int resultado = minimo;

  while (resultado <= maximo) {
    if (resultado % multiplo == 0) {
      print('Primeiro multiplo de $multiplo entre $minimo e $maximo é: $resultado');
      break;
    }
    resultado++;
  }
}
