import 'dart:collection';

import 'Conta.dart';

class Imovel {
  String tipo, endereco;
  List<Conta>? contas;

  Imovel(this.tipo, this.endereco, {this.contas});

  Imovel.fromJson(LinkedHashMap<String, dynamic> json)
      : this(
          json['tipo'],
          json['endereco'],
          contas: (json['contas'] as List<dynamic>)
              .map((e) => Conta.fromJson(e))
              .toList(),
        );

  Map<String, dynamic> toJson() {
    return {
      'tipo': tipo,
      'endereco': endereco,
      'contas': contas,
    };
  }
}
