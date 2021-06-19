import 'Acao.dart';
import 'Artista.dart';
import 'Cantor.dart';
import 'Dancarino.dart';

class Musico extends Artista with Dancarino, Cantor implements Acao {
  void acao() => print('Compoe');

  @override
  void executar() {
    super.acao();
    acao();
  }
}
