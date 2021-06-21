import 'Mamiferos.dart';

class Cao extends Mamiferos {
  late String nome;
  late String raca;

  Cao.domestico(this.nome, this.raca, String sexo, {String idade = 'Indefinida', bool docil = true}) : super.plascentarios(sexo, idade, docil: docil);

  Cao.selvagem(this.nome, this.raca, sexo, {idade = 'Indefinida', bool docil = false}) : super.plascentarios(sexo, idade, docil: docil);

  @override
  void dormir() {
    print('Dorme como um cao!');
  }

  @override
  void alimentar() {
    super.alimentar();
    print('Cao');
  }

  @override
  String toString() {
    return '''
    Nome: $nome
    Raca: $raca
    Sexo: $sexo
    Desenvolvimento: $desenvolvimento
    Idade: $idade
    Docil: $isDocil
    Coluna: $isColuna
    ''';
  }

  @override
  void reproduzir() {
    print('Reproduz como um cao!');
  }

  void amigavel() => print((this.isDocil!) ? '$nome esta amigavel' : '$nome nao esta amigavel');

  void acao() {
    print('Late como um cao');
  }
}
