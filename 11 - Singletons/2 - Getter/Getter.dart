/*
  * Singleton
    - E um padrao de projeto para que exista apenas uma instancia da classe.
    - O construtor nomeado privado sem o construtor default impede de instanciar a classe.
  * Getter
    - A _instancia e acessada atraves do get. 
*/

import 'PessoaGetter.dart';

void main() {
  print('Singleton - Getter');

  var pessoa = PessoaGetter.instance;
  print(pessoa.nome);
  pessoa.nome = 'Joao';
  print(pessoa.nome);

  var p1 = PessoaGetter.instance;
  var p2 = PessoaGetter.instance;

  print(p1 == p2 && p2 == PessoaGetter.instance);
}
