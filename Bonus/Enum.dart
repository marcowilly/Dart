/*
  * Conceito
   - Uma enumeration é usada para definir valores constantes nomeados
 */

void main() {
  print('Bonus - Enum');

  print('Lenght: ${Status.values.length} values: ${Status.values}');
  print('Acessando o index ${Status.values[1]}');
  print('Rodando: ${Status.rodando}, indice: ${Status.rodando.index}');

  for (var i = 0; i < Status.values.length; i++) {
    print('Indice: $i - Valor: ${Status.values[i]}');
  }

  print('');

  for (var value in Status.values) {
    print('Indice: ${value.index} - Value: ${value}');
  }

  print('');

  Status.values.forEach((e) => print('Indice: ${e.index} - Valor: $e'));
}

enum Status { indefinido, rodando, parado, pausado }

enum Time { hour, day, week, month, year }

String timeToString(Time time) {
  switch (time) {
    case Time.hour:
      return '1h';
    case Time.day:
      return '1d';
    case Time.week:
      return '1w';
    case Time.month:
      return '1m';
    case Time.year:
      return '1y';
    default:
      return '1h';
  }
}
