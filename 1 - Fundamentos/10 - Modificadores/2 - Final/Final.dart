/*
  * Final
    Inicializada apenas quando acessada em tempo de execucao, deve ser declarada!
    Em colecoes final nem todo conteudo sera final.
*/

import 'Pessoa.dart';

void main() {
  print('Modificadores - Final');

  //? Objeto em queda livre leva 5s para chegar ao solo! Qual a velocidade maxima do objeto?

  final double gravidade = 9.8;
  int tempo = 5;
  double velocidade = gravidade * tempo; //? v = g * t
  print('Velocidade maxima: ${velocidade} m/s');

  for (int i = 1; i <= 3; i++) {
    final indice = i;
    print('Contagem: $indice');
  }

  var pessoa = Pessoa('Marco', ['Elisiana', 'Wesley', 'Willyane']);
  pessoa.nome += ' Willy';
  print('Nome: ${pessoa.nome}, Familiares: ${pessoa.familares}');
}
