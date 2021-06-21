/*
  * Conceito
    - Streams e uma forma de monitorar eventos. Ao adicionar eventos na stream os ouvintes serao notificados
     >> As streams fornecem uma sequencia assincrona de dados. Para processar uma stream use await() ou listen()
     >> Existem dois tipos de stream: assinatura unica(sbubscription) ou transmissao(broadcast)
     >> Stream e uma sequencia com valores Futures! Ao invez de obter um evento solicitado(Future), a strem informa que ha um evento quando esta pronto

  * Stream
    - Fluxo que a classe StreamController() esta gerenciando
  
  * add()
    - Adiciona eventos na stream notificando os ouvintes que estao monitorando
  
  * listen()
    - Inscreve um ouvinte na stream para aguardar notificacoes de eventos
     >> onData: Notifica o assinante com eventos de dados da stream, se for nulo, nada acontece
     >> onError: Tratamento de eventos com erro e possivel rastreamento StackTrace. Se omitido serao considerados exceptions
     >> onDone: Evento chamado quando a stream é fechada
     >> cancelOnError: A assinatura é cancelada automaticamente ao receber um evento erro!
 */

import 'dart:async';

import 'Contador.dart';

void main() {
  print('Assincronismo - Stream');
  conceito();
  model();
  metodos();
}

/*
  * Metodos
 */

metodos() async {
  print('Assincronismo - Stream metodos e ouvintes');

  var stream = Stream<dynamic>.periodic(Duration(seconds: 1), (e) => e + 1)
      .take(5)
      .asBroadcastStream();
  stream = stream
      .takeWhile((element) => element <= 5)
      .skipWhile((element) => element > 3)
      .map((e) => e.toString().padLeft(2, '0'));

  // Ouvintes
  stream.listen((event) {
    print('Listen: $event');
  }, onDone: () {
    print('Contagem finalizada');
  });

  stream.forEach((e) => print('forEach: $e'));

  await for (dynamic event in stream) {
    print('forIn: $event');
  }

  List<dynamic> eventos = await stream.toList();
  print(eventos);

  Future<List<dynamic>> eventosFuturos = stream.toList();
  print(await eventosFuturos);
}

/*
  * Model
 */
model() {
  print('Assincronismo - Stream model');

  //Stream
  var minhaStream = Contador(termino: 5, erro: 3).stream.asBroadcastStream();

  //Inscricao de ouvintes na stream
  final inscrito1 = minhaStream.listen(
      (event) {
        print('Inscrito1: $event');
      },
      onError: (error) {
        print('Inscrito1: $error');
      },
      cancelOnError: false,
      onDone: () {
        print('Inscrito1: completo!');
      });

  // Modificar eventos
  var pares = (e) => e % 2 == 0;
  var mapear = (e) => '$e é par';

  final inscrito2 = minhaStream.where(pares).map(mapear).listen(
      (event) {
        print('Inscrito2: $event');
      },
      onError: (error) {
        print('Inscrito2: $error');
      },
      cancelOnError: false,
      onDone: () {
        print('Inscrito2: completo!');
      });

  // Gerenciar inscritos
  for (var i = 1; i <= 3; i++) {
    Future.delayed(Duration(seconds: i), () {
      if (i == 1) inscrito1.pause();
      if (i == 2) inscrito1.resume();
      if (i == 3) inscrito1.cancel();
    });
  }
}

/*
  * Conceito 
 */

conceito() {
  print('Assincronismo - Stream conceito');

  var lista = [];

  // 1 - Controlador
  var controlador = StreamController<dynamic>();

  // 2 - Stream
  var stream = controlador.stream;

  // 3 - Inscricao de ouvintes na stream
  stream.listen((onData) {
    print('Evento: $onData');
    lista.add(onData);
  }, onDone: () {
    print('Stream finalizada');
    print(lista);
  });

  // 4 - Adicionar um evento a stream
  controlador.sink.add('Marco');
  controlador.sink.add(22);
  controlador.sink.add(1.83);
  controlador.close();
  print('Monitorando... ');
}
