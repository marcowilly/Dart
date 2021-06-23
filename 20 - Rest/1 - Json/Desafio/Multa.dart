import 'dart:collection';

class Multa {
  String? descricao, tipo;
  int? pontos;

  Multa(this.descricao, this.tipo, this.pontos);

  Multa.fromJson(LinkedHashMap<String, dynamic> json)
      : this(
          json['descricao'],
          json['tipo'],
          json['pontos'],
        );

  Map<String, dynamic> toJson() {
    return {
      'descricao': descricao,
      'tipo': tipo,
      'pontos': pontos,
    };
  }
}
