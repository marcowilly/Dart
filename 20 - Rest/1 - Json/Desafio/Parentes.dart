import 'dart:collection';

class Parentes {
  String mae;
  String pai;

  Parentes(this.mae, this.pai);

  Parentes.fromJson(LinkedHashMap<String, dynamic> json)
      : this(
          json['mae'],
          json['pai'],
        );

  Map<String, dynamic> toJson() {
    return {
      'mae': mae,
      'pai': pai,
    };
  }
}
