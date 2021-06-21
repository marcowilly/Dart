import 'Acao.dart';
import 'Dancarino.dart';

class MC with Dancarino implements Acao {
  void acao() => print('Mixa ... bota o batidao');

  @override
  void executar() {
    super.acao();
    acao();
  }
}
