/*
 * Dependencia HTTP: https://pub.dev/packages/http
 * FAKE API: https://jsonplaceholder.typicode.com/ 
 */

import 'dart:convert';

import 'package:fake_api/models/Post.dart';
import 'package:fake_api/models/Users.dart';
import 'package:http/http.dart' as http;

void main() {
  //jsonGet();
  //jsonPost();
  //jsonPut();
  //jsonPatch();
  jsonDelete();
}

void jsonDelete() async {
  print('Rest - API: DELETE');
  var url = Uri.parse('https://jsonplaceholder.typicode.com/posts/1');

  try {
    var response = await http.delete(url);
    if (response.statusCode == 200) {
      print('\nSTATUS: ${response.statusCode}');
      print('BODY: ${response.body}');
    } else {
      throw Exception('Erro ao efetuar DELETE: STATUS: ${response.statusCode}');
    }
  } catch (e) {
    print(e);
  }
}

void jsonPatch() async {
  print('Rest - API: PATCH');
  var url = Uri.parse('https://jsonplaceholder.typicode.com/posts/1');

  // DECODE
  var parsedJson = <String, dynamic>{
    'id': 10,
    'title': 'Postagem de marco',
    'userId': 100,
  };

  var obj = Post.fromJson(parsedJson);

  // USO OBJETO
  print('USO OBJETO: ${obj.title}');

  // ENCODE
  var toJson = jsonEncode(obj);
  try {
    var response = await http.patch(
      url,
      body: toJson,
      headers: {'Content-type': 'application/json; charset=UTF-8'},
    );
    if (response.statusCode == 200) {
      print('\nSTATUS: ${response.statusCode}');
      print('BODY: ${response.body}');
    } else {
      throw Exception('Erro ao efetuar PATCH: STATUS: ${response.statusCode}');
    }
  } catch (e) {
    print(e);
  }
}

void jsonPut() async {
  print('Rest - API: PUT');
  var url = Uri.parse('https://jsonplaceholder.typicode.com/posts/1');

  // DECODE
  var parsedJson = <String, dynamic>{
    'id': 10,
    'title': 'Postagem de marco',
    'body': 'Funcionou! Não sei como mais funcionou!',
    'userId': 100,
  };

  var obj = Post.fromJson(parsedJson);

  // USO OBJETO
  print('USO OBJETO: ${obj.title}');

  // ENCODE
  var toJson = jsonEncode(obj);
  try {
    var response = await http.put(
      url,
      body: toJson,
      headers: {'Content-type': 'application/json; charset=UTF-8'},
    );
    if (response.statusCode == 200) {
      print('\nSTATUS: ${response.statusCode}');
      print('BODY: ${response.body}');
    } else {
      throw Exception('Erro ao efetuar PUT: STATUS: ${response.statusCode}');
    }
  } catch (e) {
    print(e);
  }
}

void jsonPost() async {
  print('Rest - API: POST');
  var url = Uri.parse('https://jsonplaceholder.typicode.com/posts');

  // DECODE
  var parsedJson = <String, dynamic>{
    'title': 'Postagem de marco',
    'body': 'Funcionou! Não sei como mais funcionou!',
    'userId': 1,
  };

  var obj = Post.fromJson(parsedJson);

  // USO OBJETO
  print('USO OBJETO: ${obj.title}');

  // ENCODE
  var toJson = jsonEncode(obj);
  try {
    var response = await http.post(
      url,
      body: toJson,
      headers: {'Content-type': 'application/json; charset=UTF-8'},
    );
    if (response.statusCode == 201) {
      print('\nSTATUS: ${response.statusCode}');
      print('BODY: ${response.body}');
    } else {
      throw Exception('Erro ao efetuar POST: STATUS: ${response.statusCode}');
    }
  } catch (e) {
    print(e);
  }
}

void jsonGet() async {
  print('Rest - API: GET');
  var url = Uri.parse('https://jsonplaceholder.typicode.com/users');
  try {
    var response = await http.get(url);
    if (response.statusCode == 200) {
      print('STATUS: ${response.statusCode}');
      //print('BODY: ${response.body}');

      // DECODE
      var parsedJson = jsonDecode(response.body);
      print('parsedJson: $parsedJson');
      var obj = Users.fromJson(parsedJson);

      // USO OBJETO
      print(
          'USO OBJETO: ${obj.users!.map((e) => e.address!.geo!.lat).toList()}');

      // ENCODE
      var map = obj.toJson();
      var toJson = jsonEncode(map);
      print('toJson: $toJson');
    } else {
      throw Exception('Erro ao obter os dados: ${response.statusCode}');
    }
  } catch (e) {
    print('Excecao: $e');
  }
}
