import 'Mamiferos.dart';

class Cao extends Mamiferos {
  String nome, raca;

  Cao(this.nome, this.raca, String sexo, {String? idade, bool docil = false}) : super(sexo, idade, docil) {
    this.idade = idade ?? 'Indefinida';
  }

  void acao() {
    print('Late como um cao');
  }
}
