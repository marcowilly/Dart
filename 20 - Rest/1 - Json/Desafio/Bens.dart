import 'dart:collection';

import 'Imovel.dart';
import 'Veiculo.dart';

class Bens {
  List<Veiculo>? veiculos;
  List<Imovel>? imoveis;

  Bens({this.veiculos, this.imoveis});

  Bens.fromJson(LinkedHashMap<String, dynamic> json)
      : this(
          veiculos: (json['veiculos'] as List<dynamic>)
              .map((e) => Veiculo.fromJson(e))
              .toList(),
          imoveis: (json['imoveis'] as List<dynamic>)
              .map((e) => Imovel.fromJson(e))
              .toList(),
        );

  Map<String, dynamic> toJson() {
    return {
      'veiculos': veiculos,
      'imoveis': imoveis,
    };
  }
}
