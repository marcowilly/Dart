import 'Carro.dart';

class Proprietario {
  String nome, endereco;
  List<Carro> carros;

  Proprietario(this.nome, this.endereco, this.carros);

  @override
  String toString() {
    return 'Nome: $nome - Carros: $carros';
  }
}
