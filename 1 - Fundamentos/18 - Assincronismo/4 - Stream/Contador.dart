import 'dart:async';

class Contador {
  var _contagem = 1, termino, erro;
  final _controlador = StreamController<int>();

  Sink get sink =>
      _controlador.sink; // nao expor o controlador, expor as interfaces
  Stream<int> get stream => _controlador.stream;

  Contador({this.termino = 5, this.erro = 3}) {
    Timer.periodic(Duration(seconds: 1), (Timer timer) {
      _contagem < termino ? sink.add(_contagem++) : sink.close();
      if (_contagem == erro) _controlador.addError('Erro intencional');
      if (_contagem >= termino) {
        timer.cancel();
        _controlador.close();
      }
    });
  }
}
