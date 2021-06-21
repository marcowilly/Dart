/*
  * Sincrona
    - Operacoes sincronas: Bloqueia a execucao ate que seja concluida
    - Funcoes sincronas: Executa somente operacoes sincronas

  * Assincrona
    - Operacoes assincronas: Permitem executar outras operacoes enquanto sao processadas.
    - Funcoes assincronas: Executam ao menos uma operacao assincrona e operacoes sincronas

  * Await
    - Indica: A espera uma operacao assincrona, conclusao de uma future

  * Async
    - Deve ser usado em toda funcao que tenha operacoes assincronas, await  
*/

void main() async {
  print('Assincronismo - Async Await');

  contagem(segundos: 3); //Funcao sincrona
  print(await tarefa(tempo: 3)); //Funcao assincrona
}

/*
  * Funcao sincrona
 */

void contagem({int segundos = 3}) {
  print('Carregando...');
  for (var i = 1; i <= segundos; i++) {
    Future.delayed(Duration(seconds: i), () {
      print('${i * 33}%');
      if (i == segundos) print('Concluido');
    });
  }
}

/*
  * Funcoes assincronas
 */

Future<String> tarefa({int tempo = 1}) async {
  var msg = await status(tempo);
  return 'Status: $msg';
}

Future<String>? status([int tempo = 1]) {
  try {
    if (tempo < 4) throw Exception('Tempo insuficiente para o Load programado');
    return Future.delayed(
        Duration(seconds: tempo), () => 'Primeira tarefa finalizada!');
  } catch (e) {
    print('catch: $e');
    return null;
  }
}
