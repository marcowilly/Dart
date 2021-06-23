import 'dart:collection';

import 'Caracteristicas.dart';
import 'Multa.dart';

class Veiculo {
  String marca, modelo;
  Caracteristicas caracteristicas;
  List<Multa>? multas;

  Veiculo(this.marca, this.modelo, this.caracteristicas, {this.multas});

  Veiculo.fromJson(LinkedHashMap<String, dynamic> json)
      : this(
          json['marca'],
          json['modelo'],
          Caracteristicas.fromJson(json['caracteristicas']),
          multas: (json['multas'] as List<dynamic>)
              .map((e) => Multa.fromJson(e))
              .toList(),
        );

  Map<String, dynamic> toJson() {
    return {
      'marca': marca,
      'modelo': modelo,
      'caracteristicas': caracteristicas,
      'multas': multas,
    };
  }
}
