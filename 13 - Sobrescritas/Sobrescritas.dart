/*
  * Metodos (override/sobreposicao != overload/sobrecarga)
  - Override: Temos sobrescrita dos metodos da classe pai na classe filha

  * Construtores
  - Super se refere ao contrutor de classe filha

  * Classes Abstratas
  - Nao podem ser instanciadas servem como modelo
  - Metodos sem escopo devem ser sobrescritos nas classes filhas
*/

import 'Abelha.dart';
import 'Cao.dart';

void main() {
  print('Sobrescrita de metodos, atributos e construtores');

  var cao = new Cao.domestico('Perola', 'Vira-lata', 'Feminino');
  print(cao.toString());
  print(cao.tipo());
  cao
    ..dormir()
    ..alimentar()
    ..reproduzir()
    ..acao()
    ..amigavel();

  var abelha = new Abelha('1');
  print(abelha.toString());
}
