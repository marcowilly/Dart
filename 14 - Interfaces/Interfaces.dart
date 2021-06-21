/*
  * Conceito
  - Interfaces sao modelos para implementar metodos e atributos em nossas classes

  * Regras
  - Ao implementar um interface devemos utilizar todos os metodos e atributos
  - No dart nao tem sintaxe para interfaces, pode ser uma classe concreta ou abstrata!
  - Pode implementar mais de uma interface e deve sobrescrever todos metodos e atributos.
 */

import 'Candidato.dart';

void main() {
  print('Interfaces');

  var bolsonaro = Candidato('Bolsonaro', 'ganhar a elecao', 'Vou acabar com a corrupcao no Brasil', ideologia: 'Direita', partido: 'PSL');
  bolsonaro.objetivosPessoais();
  bolsonaro.escreverPostagem();
  bolsonaro.ideologiaPolitica();
}
