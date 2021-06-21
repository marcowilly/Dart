/*
  * Singleton
    - E um padrao de projeto para que exista apenas uma instancia da classe.
    - O construtor nomeado privado sem o construtor default impede de instanciar a classe.
  * Factory
    - Construtor factory e usado para retornar/manter a instancia atual.
    - Construtor factory e capaz de retornar valores.
*/

import 'PessoaFactory.dart';

void main() {
  singletonFactory();
  singletonInstance();
}

void singletonFactory() {
  print('Singleton Factory');

  var p1 = PessoaFactory();
  print(p1.nome);
  p1.nome = 'Marco';
  print(PessoaFactory.instance.nome);
  PessoaFactory.instance.nome = 'Leila';
  print(p1.nome);
  print(identical(p1, PessoaFactory.instance));
}

void singletonInstance() {
  print('Singleton instancia');

  var p1 = PessoaInstancia(nome: 'Marco Willy');
  print('Nome: ${p1.nome}, Identidade: ${p1.IDENTIDADE}');

  var p2 = PessoaInstancia(nome: 'Maria Alice', identidade: 123567366);
  print('Nome: ${p2.nome}, Identidade: ${p2.IDENTIDADE}');
  p2.nome = 'Maria Alice';
  print('Nome: ${p1.nome}, Identidade: ${p1.IDENTIDADE}');
  print(identical(p1, p2));
}
