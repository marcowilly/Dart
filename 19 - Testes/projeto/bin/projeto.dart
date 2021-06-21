/*
  * Assert
    - Usa logica boleana para testar afirmacoes no modo debug
    - Try/Catch pode ser uado para tratar excecao

    * Test
      - Certifique-se de ter o package "test" em "dev_dependencies" no aqrquivo
      - Atualize os packages no terminal usando com "pub get"
      - Execute os testes na pasta raiz usando "pub run test"
      - Podemos testar variaveis, funcoes e efetuar testes em grupos

    * Sintaxe
      test("Descricao", () {
        expect(valorReal, valorEsperado)
      });
 */
import 'package:projeto/projeto.dart' as projeto;

void main(List<String> arguments) {
  print('Testes unitarios');

  print('Hello world: ${projeto.calculate()}!');
  print('Listar nomes: ${projeto.converterEmLista('Marco Willy')}!');
  print('Verificar a maioridade: ${projeto.maioridade(18)}!');
  print('Recuperar Nome: ${projeto.recuperarNome(['Marco', 'Willy'])}!');
  print('Resto da divisao: ${projeto.restoDivisao(12, 3)}!');

  // Fora do try catch gera excecao
  String? texto;
  assert(texto == null);

  try {
    String telefone = '12345678';
    assert(telefone.length == 9, 'O telefone deve conter 9 digitos');
  } catch (e) {
    print('Excecao: $e');
  }
}
