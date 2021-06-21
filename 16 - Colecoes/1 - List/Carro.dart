import 'Caracteristicas.dart';
import 'Multa.dart';

class Carro {
  String marca, modelo, placa;
  Caracteristica caracteristica;
  late List<Multa> multas;

  Carro(this.marca, this.modelo, this.placa, this.caracteristica,
      {List<Multa>? multas}) {
    this.multas = multas ?? [];
  }

  @override
  String toString() {
    return 'Marca: $marca - Modelo: $modelo - Placa: $placa - Caracteristica: $caracteristica - Multas: $multas';
  }
}
