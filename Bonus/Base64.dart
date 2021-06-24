/*
  * Conceito
  UTF-8
    - Binario que representa qualaquer caractere universal.
  Base64
    - Codificacao de dados para transferencia na Internet
    - https://www.base64encode.org/
 */

import 'dart:convert';

void main() {
  print('Bonus - Base64 & UTF-8');

  String email = 'fma@gmail';

  // ENCODE
  List<int> eBytes = utf8.encode(email);
  String codificacao = base64.encode(eBytes);
  print(codificacao);

  // DECODE
  List<int> dBytes = base64.decode(codificacao);
  String decodificado = utf8.decode(dBytes);
  print(decodificado);
}
