void main() {
  print('Operadores logicos (&& || !)');

  /// Operador && somente se ambas as afirmaçoes forem true o retorno sera true
  /// Operador || precisa somente de uma afirmacao verdadeira o retorna sera true
  /// Operador ! inverte o valor boleano

  var verdadeiro = !false;
  bool falso = !true;
  print('''Verdadeiro: $verdadeiro - Falso: $falso''');
  print('''Operador (!) !true: ${!true} - !false: ${!false}''');

  bool test1 = verdadeiro || verdadeiro;
  bool test2 = verdadeiro || falso;
  bool test3 = falso || falso;
  print('Operador (||) ${test1} - ${test2} - ${test3}');
  print('Operador (&&) ${true && true} - ${true && false} - ${falso && falso}');

  bool operacao = (1 <= 2 && 3 > 2);
  print(operacao);

  operacao = !(1 > 2) && ((3 < 2) || falso);
  print(operacao);
}
