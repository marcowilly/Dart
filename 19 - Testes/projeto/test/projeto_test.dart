import 'package:projeto/projeto.dart';
import 'package:test/test.dart';

void main() {
  // TESTES VARIAVEIS
  test('Converter string em Array', () {
    String texto = 'Fernando,Leila,Chloe';
    expect(texto.split(','), equals(['Fernando', 'Leila', 'Chloe']));
  });

  // TESTES EM FUNCOES
  test('calculate', () {
    expect(calculate(), 42);
  });

  group('Manipulacao de Strings', () {
    test('Converter Em Lista', () {
      expect(converterEmLista('Luiza Azevedo'), equals(['Luiza', 'Azevedo']));
    });

    test('RecuperarNome', () {
      expect(recuperarNome(['Marco', 'Willy']),
          allOf(contains('Mar'), isNot(startsWith('Willy')), endsWith('arco')));
    });
  });

  group('Manipulacao de nums', () {
    test('Resto da divisao', () => expect(restoDivisao(12, 3), equals(0)));

    test('Verificar Maioridade', () {
      expect(maioridade(18), 'Adulto');
      expect(maioridade(17), 'Adolescente');
      expect(maioridade(13), 'Crianca');
      expect(maioridade(-13), null);
    });
  });
}
