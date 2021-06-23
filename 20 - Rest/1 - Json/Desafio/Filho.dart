import 'dart:collection';

class Filho {
  String nome;
  int idade;
  List<String>? vacinas;

  Filho(this.nome, this.idade, {this.vacinas});

  Filho.fromJson(LinkedHashMap<String, dynamic> json)
      : this(
          json['nome'],
          json['idade'],
          vacinas: json['vacinas'].cast<String>(),
        );

  Map<String, dynamic> toJson() {
    return {
      'nome': nome,
      'idade': idade,
      'vacinas': vacinas,
    };
  }
}
