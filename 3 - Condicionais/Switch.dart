void main() {
  print('Condicionais Switch');

  String operacao = '%';
  double numeroA = 12;
  double numeroB = 3;

  switch (operacao) {
    case '+':
      print('Resultado ${numeroA + numeroB}');
      break;
    case '-':
      print('Resultado ${numeroA - numeroB}');
      break;
    case '*':
      print('Resultado ${numeroA * numeroB}');
      break;
    case '/':
      print('Resultado ${numeroA / numeroB}');
      break;
    default:
      print('Operacao Invalida');
  }

  int dia = 1;

  switch (dia) {
    case 1:
      print('Domingo');
      break;
    case 2:
      print('Segunda');
      break;
    case 3:
      print('Terca');
      break;
    case 4:
      print('Quarta');
      break;
    case 5:
      print('Quinta');
      break;
    case 6:
      print('Sexta');
      break;
    case 7:
      print('Sabado');
      break;
    default:
      print('Dia da semana invalido');
      break;
  }
}
