void main() {
  print('Loops for');

  for (var i = 1; i <= 3; i++) {
    print('Contagem: $i');
  }

  print('');

  for (var i = 15; i > 0; i -= 5) {
    print('Regressiva: $i');
  }

  print('');

  String nome = 'Leila';
  int numero = 0;
  for (int i = numero; i < nome.length; i++) {
    if (i % 2 == 0)
      print('$i é par');
    else
      print('$i é impar');
  }

  print('');

  for (var i = 0; i < nome.length; i++) {
    print('${nome.substring(i, i + 1)}');
  }

  print('');

  for (int i = 5; i <= 12; i++) {
    if (i == 0) {
      print('$i é multiplo de todos os numeros');
    } else if (i % 2 == 0 && i % 3 == 0) {
      print('$i é multiplo de 2 e 3');
    } else if (i % 3 == 0) {
      print('$i é multiplo de 3');
    } else if (i % 2 == 0) {
      print('$i é multiplo de 2');
    } else {
      print('$i');
    }
  }

  print('');

  dynamic frutas = ['Tomate', 'Manga', 'Pera', 'Maça'];
  for (var i = 0; i < frutas.length; i++) {
    print('For: $i - ${frutas[i]}');
  }

  print('');

  for (var fruta in frutas) {
    print('Forin: $fruta');
  }
}
