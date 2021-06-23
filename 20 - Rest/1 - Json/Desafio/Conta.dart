import 'dart:collection';

class Conta {
  String tipo;
  int valor;

  Conta(this.tipo, this.valor);

  Conta.fromJson(LinkedHashMap<String, dynamic> json)
      : this(
          json['tipo'],
          json['valor'],
        );

  Map<String, dynamic> toJson() {
    return {
      'tipo': tipo,
      'valor': valor,
    };
  }
}
