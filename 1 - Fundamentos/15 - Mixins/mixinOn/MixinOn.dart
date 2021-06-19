/*
  * Conceito
  - Mixin permite implementar metodos e atributos de outras classes

  * Regras
  - Devem ser implementados a partir de uma classe concreta ou abstrata
  - Nao pode implementar um classe que estenda extender de uma classe mixin
  - Pode implementar mais de um mixin, e nao é obrigatório usar todos metodos e atributos
  - As classes que possuem metodos iguais serao sobrescritas em ordem ate a classe herdeira

  * ON
  - E obrigatório declarar sua classe como mixin.
  - Restringi o uso do mixin as classes que estendem ou implementam a classe declarada
*/

import 'MC.dart';
import 'Musico.dart';

void main() {
  print('Mixin On');

  Musico musico = new Musico();
  musico.executar();

  MC mc = new MC();
  mc.executar();
}
