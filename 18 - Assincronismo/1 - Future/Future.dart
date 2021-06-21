/*
  * Future
    - É um objeto que retorna um valor ou erro, resultado de uma excesao assincrona/futura.  
 */

void main() {
  print('Assincronismo - Futures');
  print(tarefa(tempo: 4)); // Print é executado antes do termino do future!
  novaTarefa(tempo: 4); // print sera executado no future!
  excecao(tempo: 6);
  contagem(segundos: 3);
}

excecao({int tempo = 1}) {
  Future.delayed(
      Duration(seconds: tempo), () => throw Exception('Erro intencional'));
}

void novaTarefa({int tempo = 1}) {
  Future.delayed(Duration(seconds: tempo),
      () => print('Status: Segunda tarefa finalizada!'));
}

void contagem({int segundos = 3}) {
  print('Carregando...');
  for (var i = 1; i <= segundos; i++) {
    Future.delayed(Duration(seconds: i), () {
      print('${i * 33}%');
      if (i == segundos) print('Concluido');
    });
  }
}

String tarefa({int tempo = 1}) {
  var msg = status(tempo);
  return 'Status: $msg';
}

Future<String> status([int tempo = 1]) {
  return Future.delayed(
      Duration(seconds: tempo), () => 'Primeira tarefa finalizada!');
}
