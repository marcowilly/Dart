void main() {
  print('Loops For labels');

  for (var i = 0; i < 2; i++) {
    for (int j = i; j < 2; j++) {
      for (num k = j; k < 2; k++) {
        print('i: $i, k: $k, j: $j');
      }
    }
  }

  print('For com break e rotulos (labels)');

  loopExterno:
  for (var i = 0; i < 3; i++) {
    print('LoopExterno: i: $i');
    loopInterno:
    for (var j = 0; j <= 3; j++) {
      print('LoopInterno: i: $i, $j');
      if (j > 2) break;
      if (i == 1) break loopInterno;
      if (i == 2) break loopExterno;
      print('Loop Completo');
    }
  }

  print('For com continue e rotulos (labels)');

  loopExterno:
  for (int i = 1; i <= 2; i++) {
    print('LoopExterno: i: $i');
    loopInterno:
    for (int j = 1; j <= 3; j++) {
      print('LoopInterno: i: $i, j: $j');
      if (i == 1 && j == 1) continue loopInterno;
      if (i == 2 && j == 2) continue loopExterno;
      print('Loop Completo');
    }
  }
}
