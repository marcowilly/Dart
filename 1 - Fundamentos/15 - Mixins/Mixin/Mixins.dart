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

import 'Candidato.dart';

void main() {
  print('Mixins');

  var bolsonaro = Candidato('Bolsonaro', 'ganhar a elecao', 'Vou acabar com a corrupcao no Brasil', ideologia: 'Direita', partido: 'PSL');
  bolsonaro.objetivosPessoais();
  bolsonaro.escreverPostagem();
  bolsonaro
    ..ideologiaPolitica()
    ..depositar = 30000
    ..prestacaoContas();
}
