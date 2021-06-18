void main() {
  funcaoParametrosPosicionados();
  funcaoParametrosNomeados();
  funcaoParametroFuncao();
}

funcaoParametroFuncao() {
  print('Funcoes como parametro para outras funcoes');

  void falar() {
    print('Essa e uma funcao passada como parametro nomeado!');
  }

  void saudacao(String nome, {Function? funcaoFalar}) {
    print('Olá, eu sou $nome');
    funcaoFalar!();
  }

  saudacao('Marco', funcaoFalar: falar);
  saudacao('Fernando', funcaoFalar: () => print('Essa é uma funcao anonima passada como parametro nomeado!'));
}

funcaoParametrosPosicionados() {
  print('Funcoes com parametros posicionados');

  void exibirDados(String nome, [int peso = 0, double altura = 0]) {
    print('Nome: $nome, peso: $peso, altura: $altura');
  }

  exibirDados('Marco');
  exibirDados('Marco', 75, 1.81);
}

funcaoParametrosNomeados() {
  print('Funcoes com parametros nomeados e default');

  void exibirDados(String nome, {int peso = 0, dynamic altura}) {
    print('Nome: $nome, peso: $peso, altura: ${altura ?? 'Nao informada!'}');
  }

  exibirDados('Marco');
  exibirDados('Marco', peso: 75, altura: 1.81);
}
