/*
  * Conceito
    - O temporizador leva dois argumentos, uma duracao e uma funcao para executar
    - A duracao deve ser uma instancia de Duration
 */

import 'dart:async';

void main() {
  print('Bonus - Timer');

  print('Compilado as ${tempoAgora()}');

  Timer.run(() => print('Executado as ${tempoAgora()}'));

  Timer(Duration(seconds: 2), () => print('Apos 2 segundos: ${tempoAgora()}'));

  Timer.periodic(Duration(seconds: 1), (Timer timer) {
    contador++;
    if (contador == 4) print('Apos 4 segundos! ${tempoAgora()}');
    if (contador == 6) {
      print('Apos 6 segundos! Script finalizado as ${tempoAgora()}');
      timer.cancel();
    }
  });
}

int contador = 0;

String tempoAgora() {
  DateTime tempo = DateTime.now();
  String hora =
      '${tempo.hour}:${tempo.minute}:${tempo.second}:${tempo.microsecond}';
  return hora;
}
