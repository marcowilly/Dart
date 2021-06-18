/*
  * Const
    - Inializada em tempo de compilacao, deve ser declarada com valor constante
    - Ao nivel de classes deve ser estatico para ficar disponivel na classe
    - Em colecoes const todo conteudo deve ser constante
  * Objeto imutavel
    - O Construtor deve ser constante
    - As variaveis devem ser final ou static const
*/

import 'dart:math';

import 'Brasil.dart';

void main() {
  print('Modificadores - Const');

  const PI = 3.14;
  double raio = 2;
  var resultado = PI * pow(raio, 2);
  print('${resultado}\n');

  final numeros = [raio, 2.5];
  numeros.add(resultado);
  print(numeros);

  const LISTA_FINAL = [0, 1];
  print(LISTA_FINAL);

  const LISTA_CONST = [1, 2, pi];
  print('${LISTA_CONST}');

  for (var i = 0; i < 3; i++) {
    final indiceFinal = i;
    const CONSTANTE = 1;
    print('Contagem: ${CONSTANTE + indiceFinal}');
  }

  var pais = new Brasil(-15.792371, -47.882326);
  print('\nObjeto: $pais, capital: ${Brasil.CAPITAL}, latitude: ${pais.latitute}, longitude: ${pais.longitude}');
  print('Estados: ${Brasil.ESTADOS}');
}
