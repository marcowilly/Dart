/*
  * Conceito
    - Generators sao funcoes Geradoras que produzem sequencia de valores usando:
      >> Funcoes sincronas retornam Iterable
      >> Funcoes assincronas retornam Stream
 */

void main() {
  print('Assincronismo - Generators');

  funcoesGeradoras();
  funcoesGeradorasRecursivas();
  taratamentoExcecoes();
}

/*
  * TRY CATCH
   >> Tratamento excecoes
*/

taratamentoExcecoes() async {
  print('Assincronismo - Funcoes Geradoras Tratamento de excesoes');

  Future<int> streamSoma(Stream<int> stream) async {
    var soma = 0;
    /*
    await for (var item in stream) {
      soma += item;
    }
    return soma;
    */
    try {
      await for (var item in stream) {
        soma += item;
      }
    } catch (e) {
      print(e);
      return -1;
    }
    return soma;
  }

  Stream<int> streamContagem(int termino, {int erro = 0}) async* {
    for (int i = 1; i <= termino; i++) {
      //yield i;
      if (i == erro) {
        throw Exception('Exception intencional');
      } else {
        yield i;
      }
    }
  }

  var stream = streamContagem(10, erro: 3);
  var soma = await streamSoma(stream);
  print(soma);
  //stream.forEach((e) => print(e));
}

/*
  * yield* (Producao)
    >> Utilizado em funcoes geradoras sincronas e assincronas recursivas
    >> Voce podera melhorar seu desempenho usando yield* usando gerador for recursivo
 */

funcoesGeradorasRecursivas() {
  print('Assincronismo - Funcoes Geradoras Recursivas');

  Iterable<int> funcaoSincrona(int repeticaoMaxima) sync* {
    for (var i = 1; i <= repeticaoMaxima; i++) {
      yield i;
      yield* funcaoSincrona(i - repeticaoMaxima);
    }
  }

  print(funcaoSincrona(3));

  Stream<int> funcaoAssincrona(int repeticaoMaxima) async* {
    for (var i = 1; i <= repeticaoMaxima; i++) {
      yield i;
      yield* funcaoAssincrona(i - repeticaoMaxima);
    }
  }

  funcaoAssincrona(3).forEach((e) => print(e));
}

/*
  * yield (Producao)
    >> Utilizado em funcoes geradoras sincronas e assincronas
    >> Adiciona um valor ao fluxo de saida da funcao assincrona * retornando sem encerrar a funcao!
 */

funcoesGeradoras() {
  print('Assincronismo - Funcoes Geradoras');

  Iterable<int> funcaoSincrona(int repeticaoMaxima) sync* {
    int i = 0;
    while (i < repeticaoMaxima) yield ++i;
  }

  print(funcaoSincrona(5));

  Stream<int> funcaoAssincrona(int repeticaoMaxima) async* {
    int i = 0;
    while (i < repeticaoMaxima) yield ++i;
  }

  funcaoAssincrona(3).forEach((e) => print(e));
}
