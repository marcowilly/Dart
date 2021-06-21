import 'Artropodes.dart';

class Abelha extends Artropodes {
  Abelha(String idade) : super.insetos(idade, false);

  @override
  String toString() {
    return '''
    Idade: $idade
    Docil: $isDocil
    ${tipo()}
    ''';
  }
}
