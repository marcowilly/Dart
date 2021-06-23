import 'dart:collection';

import 'Parentes.dart';

class Conjuge {
  String nome;
  int idade;
  Parentes parentes;

  Conjuge(this.nome, this.idade, this.parentes);

  Conjuge.fromJson(LinkedHashMap<String, dynamic> json)
      : this(
          json['nome'],
          json['idade'],
          Parentes.fromJson(json['parentes']),
        );

  Map<String, dynamic> toJson() {
    return {
      'nome': nome,
      'idade': idade,
      'parentes': parentes,
    };
  }
}
