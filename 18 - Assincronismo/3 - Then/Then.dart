/*
  * Conceito
    - Then registra callbacks que serao chamadas quando o Future for concluido
     >> onValue: Valor passado ao termino do Future
     >> catchError: Se omitido é lancado como uma exception
      >> test: Se qualquer logica retorna true e lancada a exception
     >> whenComplete: Chama uma funcao anonima ao termino do Future  
 */

void main() {
  print('Assincronismo - Then');

  contagem(segundos: 3);
  tarefa(tempo: 4).then((onValue) => print(onValue)); // Funcao assincrona
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

Future<String> tarefa({int tempo = 1}) {
  return status(tempo).then((msg) {
    return 'Status: $msg';
  }).catchError((onError) {
    print('catchError: $onError');
  },
      test: (onError) =>
          onError is! Future && onError.runtimeType == Future).whenComplete(() {
    print('Future completa!');
  });
}

Future<String> status([int tempo = 1]) {
  return Future.delayed(
      Duration(seconds: tempo), () => Future.error('Erro intencional'));
}
