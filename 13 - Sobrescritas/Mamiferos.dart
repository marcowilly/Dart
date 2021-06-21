import 'Animal.dart';

abstract class Mamiferos extends Animal {
  late String sexo;
  late String desenvolvimento;

  Mamiferos.plascentarios(this.sexo, idade, {docil}) : super.vertebrados(idade, isDocil: docil) {
    this.desenvolvimento = 'Plascentarios';
  }

  Mamiferos.marsupiais(this.sexo, idade, {docil}) : super.vertebrados(idade, isDocil: docil) {
    this.desenvolvimento = 'Plascentarios + bolsa externa';
  }

  Mamiferos.monotremados(this.sexo, idade, {docil}) : super.vertebrados(idade, isDocil: docil) {
    this.desenvolvimento = 'Ovo';
  }

  void alimentar() {
    print('Se alimenta');
    print('Como um');
  }

  void reproduzir();
}
