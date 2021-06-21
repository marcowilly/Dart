void main() {
  print('(1) - Variáveis');

  var valorA = 10, valorB = 4; //int
  var valorC = 2.5; //double
  print(valorA + valorB + valorC);

  var salario = 1000, descontos = 250;
  print(salario - descontos);

  print(3 + ((2 * 4) + (10 / 5)));

  print('');

  print("Concatenar "
      "Strings "
      "é simples assim!");

  var texto1 = "\nFernando ";
  var texto2 = "Martins";
  var texto3 = '''\n e Leila Martins\n
    ''';

  print(texto1 + texto2 + texto3);

  var verdadeiro = true;
  var falso = false;
  print('Verdadeiro = ${verdadeiro}');
  print('Falso = ' + '$falso');
  print(valorC.runtimeType);

  const pi = 3.14;
  var nome = 'Marco Willy';
  String sobrenome = 'Azevedo Gomes';
  int idade = 22;
  double altura = 1.81;
  bool adulto = true;

  print('''nome: $nome - Qtd letras: ${nome.length}
Sobrenome: $sobrenome - Qtd letras: ${nome.length}
Idade: $idade
Altura: $altura cm
Adulto: $adulto
PI: $pi
''');

  dynamic variavel = 2.0;
  variavel = 2;
  variavel = 'dois';
  variavel = true;
  print(variavel);
}
