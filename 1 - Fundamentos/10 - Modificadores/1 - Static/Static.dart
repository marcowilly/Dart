/*
  *Static
    A variavel estatica fica disponicel na propria classe em vez de suas instancias/objetos
    Em metodos estaticos deve se usar variaveis estaticas da classe
    Variaveis estaticas podem ser acessadas sem precisar instanciar classes/objetos
 */
import 'dart:math';

import 'Calculos.dart';

void main() {
  print('Modificadores - Static');

  double raio = 5;
  var calculos = new Calculos();
  print(calculos.pi);
  print(calculos.areaCirculo(raio));

  print('');

  Calculos calculos1 = new Calculos();
  print(calculos1.pi);
  print(calculos1.areaCirculo(raio));

  print('\nInstancias consomem ${identical(calculos, calculos1) ? 'Menos' : 'Mais'} memoria');

  print(Calculos.piEstatico);
  print(Calculos.piEstatico * (pow(raio, 2)));
  print('Retornos iguais: ${Calculos.areaCirculoEstatico(raio) == new Calculos().areaCirculo(raio) ? 'sim' : 'não'}, Metodos diferentes');
}
