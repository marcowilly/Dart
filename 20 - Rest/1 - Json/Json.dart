/*
  * Conceito
    - Representational State Transfer (Transferencia Representational de Estado)
    - E uma arquitetura que define um conjunto de restricoes na criacao de web services
    - E uma padronizacao para multiplas aplicacoes possam se comunicar usando protocolo HTTP.
 */

import 'dart:convert';

import 'ListaUsuarios.dart';
import 'Usuario.dart';

void main() {
  print('Rest - JSON');

  conversaoDireta();
  conversaoObjeto();
}

/*
  * Serializacao JSON em Objeto
    - Utiiza recursos estaticos de linguagens
    - Seguranca de tipos, autocompletar e execoes de tempo de compilacao
 */

conversaoObjeto() {
  print('Rest - JSON conversao objeto');

  String jsonData = '''
  [
    {
      "nome" : "Marco",
      "idade" : 22,
      "email" : "marco@gmail.com"
    },
    {
      "nome" : "Marco Willy",
      "idade" : 22,
      "email" : "marco@gmail.com"
    }
  ]
  ''';

  // DECODE
  List<dynamic> parsedJson = jsonDecode(jsonData);
  print('ParsedJson: $parsedJson');
  ListaUsuarios listaUsuarios = ListaUsuarios.fromJson(parsedJson);
  Usuario usuario =
      listaUsuarios.usuarios.singleWhere((e) => e.nome == 'Marco');
  print(
      'USO OBJETO: nome: ${usuario.nome} idade: ${listaUsuarios.usuarios.elementAt(0).idade} email: ${listaUsuarios.usuarios[0].email}');

  var usuarioNovo =
      Usuario.fromJson({'nome': 'Chloe', 'idade': 1, 'email': 'cm@gmail.com'});
  listaUsuarios.usuarios.add(usuarioNovo);

  // ENCODE
  List<dynamic> lista = listaUsuarios.toJson();
  String toJson = json.encode(lista);
  print('ToJson: $toJson');
}

/*
  * Serializacao Manual - Biblioteca JSON integrada ao 'dart:convert';

  * Serializacao JSON direta
    - Perde recursos estatico de linguagens:
    - Seguranca de tipo, autocompletar e excecoes de tempo de compilcacao
 */

conversaoDireta() {
  print('Rest - JSON conversao direta');

  String jsonData = '''
  {
    "nome" : "Marco",
    "idade" : 22,
    "email" : "marco@gmail.com"
  }
  ''';

  // DECODE
  Map<String, dynamic> parsedJson = jsonDecode(jsonData);
  print('parsedJson: $parsedJson');
  String nome = parsedJson['nome'];
  int idade = parsedJson['idade'];
  String email = parsedJson['email'];
  print('USO DIRETO: nome: $nome, idade: $idade, email: $email');

  // ENCODE
  Map<String, dynamic> map = {'nome': nome, 'idade': idade, 'email': email};
  String toJson = jsonEncode(map);
  print('ToJson: $toJson');
}
