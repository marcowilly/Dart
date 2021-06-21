/**
 * * Tratamnento de excecao
 *  - try: usado para testar uma logica
 *  - catch: Captura erros na logica try
 *  - on: Captura especificos/conhecidos na logica try
 *  - throw Exception: Excecao criada pelo usuario e tratada no catch
 *  - finally: Executado ao final try/catch, com excecao ou nao! Utilizado para liberar recursos na logica try
 */

void main() {
  print('Excecoes - Tratamento de excecoes');

  caso1();
  caso2();
  caso3();
  caso4();
  caso5();
}

/**
 * Caso5: Use finally para tratamento apos execucao. Muito usada para liberar recursos utilizados na logica Try Catch
 */

caso5() {
  print('Excecoes - Throw Exception');

  try {
    num resultado = 1 / 0;
    if (resultado.isInfinite) {
      throw Exception('Numeros dividos por 0 geram valores infinitos');
    }
    print('Resultado $resultado');
  } catch (e) {
    print('Excecao: $e');
  } finally {
    print('Finally: Com ou sem excecao sera executado');
  }
}

/**
 * Caso4: Use finally para tratamento apos execucao. Muito usada para liberar recursos utilizados na logica Try Catch
 */

caso4() {
  print('Excecoes - Finally');

  try {
    num resultado = 1 ~/ 0;
    print('Resultado $resultado');
  } catch (e) {
    print('Excecao: $e');
  } finally {
    print('Finally: Com ou sem excecao sera executado');
  }
}

/**
 * Caso3: Para descobrir eventos ocorridos antes da excecao, use Stack Trace!
 */

caso3() {
  print('Excecoes - Stack Trace');

  try {
    num resultado = 1 ~/ 0;
    print('Resultado $resultado');
  } catch (e, s) {
    print('Excecao: $e');
    print('Stack Trace: $s');
  }
}

/**
 * Caso2: Quando voce conhece a excecao use a clausula ON
 */

caso2() {
  print('Excecoes - ON');

  try {
    num resultado = 1 ~/ 0;
    print('Resultado $resultado');
  } on IntegerDivisionByZeroException {
    print('Excecao: Não e possivel dividir por zero!');
  } catch (e) {
    print('Excecao: $e');
  }
}

/**
 * Caso1: Quando voce desconhece a excecao use a clausula TRY CATCH
 */

caso1() {
  print('Excecoes - Try Catch');

  try {
    num resultado = 1 / 0;
    print('Resultado $resultado');
  } catch (e) {
    print('Excecao: $e');
  }
}
