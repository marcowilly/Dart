void main() {
  funcaoArrow();
}

/**
 * Funcoes arrow tem o retorno implicito
 */
funcaoArrow() {
  print('Funcoes Arrow');

  String conceito() => 'Funcao arrow com retorno implicito';
  String somarValores(int a, int b) => 'Soma $a + $b = ${a + b}';
  String verificarMaioridade(String nome, int idade) => (idade >= 18) ? '$nome é maior de idade!' : '$nome nao é maior de idade';
  String calcularAreaCirculo(double raio) => 'Area do circulo: ${3.14 * (raio * raio)}';
  double desconto(int faltas) => (faltas > 1)
      ? 0.8
      : (faltas == 1)
          ? 0.9
          : 0;
  void calcularSalario(String nome, double salario, double bonus, int faltas) {
    var total = (salario * desconto(faltas)) + bonus;
    print('Empregado: $nome, salario: $total');
  }

  print(conceito());
  print(somarValores(100, 1000));
  print(verificarMaioridade('Fernando', 36));
  print(calcularAreaCirculo(2));
  calcularSalario('Marco', 900, 100, 2);
}
