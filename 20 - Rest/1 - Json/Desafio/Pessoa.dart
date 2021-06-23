import 'dart:collection';

import 'Bens.dart';
import 'Conjuge.dart';
import 'Filho.dart';
import 'Parentes.dart';

class Pessoa {
  String nome;
  int idade;
  Parentes parentes;
  List<String>? tarefas;
  Conjuge? conjuge;
  List<Filho>? filhos;
  Bens? bens;

  Pessoa(this.nome, this.idade, this.parentes,
      {this.tarefas, this.conjuge, this.filhos, this.bens});

  factory Pessoa.fromJson(LinkedHashMap<String, dynamic> json) {
    //List<dynamic> lista = json['filhos'] as List;
    //List<Filho> dataLista = lista.map((e) => Filho.fromJson(e)).toList();

    return Pessoa(
      json['nome'],
      json['idade'],
      Parentes.fromJson(json['parentes']),
      tarefas:
          List<String>.from(json['tarefas']), //json['tarefas'].cast<String>(),
      conjuge: Conjuge.fromJson(json['conjuge']),
      filhos: (json['filhos'] as List<dynamic>)
          .map((e) => Filho.fromJson(e))
          .toList(),
      bens: Bens.fromJson(json['bens']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'nome': nome,
      'idade': idade,
      'parentes': parentes,
      'tarefas': tarefas,
      'conjuge': conjuge,
      'filhos': filhos,
      'bens': bens,
    };
  }
}
