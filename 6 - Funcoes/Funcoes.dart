void main() {
  semRetorno();
  comRetorno();
}

comRetorno() {
  print('Funcoes com retorno');

  String conceito() {
    return 'Funcao com retorno String';
  }

  String somaValores(int valorA, int valorB) {
    var resultado = valorA + valorB;
    return 'Soma: $valorA + $valorB = $resultado';
  }

  String verificarMaioridade(String nome, int idade) {
    var resposta;
    if (idade >= 18) {
      resposta = 'é maior';
    } else {
      resposta = 'nao é maior';
    }
    return '$nome $resposta de idade';
  }

  String contagemRegressiva(int numero) {
    var resultado;
    for (var i = numero; i >= 0; i--) {
      (i != 0) ? print('Contagem: $i') : resultado = 'Contagem vai!!!';
    }
    return resultado ?? '';
  }

  String converterKmParaMilhas(dynamic array) {
    dynamic milha = 0.621271;
    for (dynamic item in array) {
      print('$item\t Km\'h em Milhas\'h ${(item * milha).toStringAsFixed(2)}');
    }
    return '\nArray convertido e arredondado!\n';
  }

  print(conceito());
  print(somaValores(100, 100));
  print(verificarMaioridade('Willyane', 19));
  print(contagemRegressiva(3));
  print(converterKmParaMilhas([1, 5, 10, 40, 60, 80, 100, 120, 140, 160, 200]));
}

semRetorno() {
  print('Funcoes sem retorno');

  void conceito() {
    print('Funcao void sem retorno');
  }

  void somaValores(int valorA, int valorB) {
    var resultado = valorA + valorB;
    print('Soma: $valorA + $valorB = $resultado');
  }

  void verificarMaioridade(String nome, int idade) {
    var resposta;
    if (idade >= 18) {
      resposta = 'é maior';
    } else {
      resposta = 'nao é maior';
    }
    print('$nome $resposta de idade');
  }

  void contagemRegressiva(int numero) {
    for (var i = numero; i > 0; i--) {
      print('Contagem: ${(i == 0) ? 'Vai!!!' : i}');
    }
  }

  converterKmParaMilhas(dynamic array) {
    dynamic milha = 0.621271;
    for (dynamic item in array) {
      print('$item\t Km\'h em Milhas\'h ${(item * milha).toStringAsFixed(2)}');
    }
  }

  conceito();
  somaValores(2, 3);
  verificarMaioridade('Marco Willy', 22);
  contagemRegressiva(3);
  converterKmParaMilhas([1, 5, 10, 40, 60, 80, 100, 120, 140, 160, 200]);
}
