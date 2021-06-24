/*
 * Biblioteca HTTP: https://pub.dev/packages/http
 * Viacep API: https://viacep.com.br/
 * HTTP CODES: https://github.com/waldemarnt/http-status-codes
 */
import 'dart:convert';

import 'package:http/http.dart' as http;

import 'Cep.dart';

main() async {
  var url = Uri.parse('https://viacep.com.br/ws/31995150/json/');

  try {
    var response = await http.get(url);
    print('STATUS: ${response.statusCode}');
    print('BODY: ${response.body}');

    if (response.statusCode == 200) {
      // DECODE
      Map<String, dynamic> parsedJson = jsonDecode(response.body);
      var cep = Cep.fromJson(parsedJson);

      print('parsedJson: $parsedJson');
      print('Objeto: ${cep.logradouro}');

      // ENCODE
      var map = cep.toJson();
      var toJson = jsonEncode(map);
      print('toJson: $toJson');
    } else {
      throw Exception('Erro ao obter o CEP: \nSTATUS: ${response.statusCode}');
    }
  } catch (e) {
    print(e);
  }
}
