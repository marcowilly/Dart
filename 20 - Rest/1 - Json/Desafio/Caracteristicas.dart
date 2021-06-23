import 'dart:collection';

class Caracteristicas {
  String tipo;
  int passageiros;

  Caracteristicas(this.tipo, this.passageiros);

  Caracteristicas.fromJson(LinkedHashMap<String, dynamic> json)
      : this(
          json['tipo'],
          json['passageiros'],
        );

  Map<String, dynamic> toJson() {
    return {
      'tipo': tipo,
      'passageiros': passageiros,
    };
  }
}
