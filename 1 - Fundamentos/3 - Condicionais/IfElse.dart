void main() {
  print('Condifcionais If Else');

  if (!true) {
    print('Verdadeiro');
  } else {
    print('False');
  }

  int idade = 17;
  if (idade >= 18)
    print('Maior');
  else
    print('Menor');

  idade = 18;
  if (idade < 14) {
    print('crianca');
  } else if (idade < 18) {
    print('Adolescente');
  } else {
    print('Adulto');
  }

  String textoInt = '10';
  String textoDouble = '10.12345';
  int numeroInt = int.parse(textoInt);
  var numeroDouble = double.parse(textoDouble).toStringAsFixed(2);
  print('ParseInt: $numeroInt, ParseDouble: $numeroDouble');
  print('ParseString: ${numeroDouble.toString() is String}');

  double peso = 75;
  double altura = 1.81;
  var temp = peso / (altura * altura);
  double imc = double.parse(temp.toStringAsFixed(2));

  if (imc < 18.5) {
    print('IMC: $imc abaixo do peso');
  } else if (imc >= 18.5 && imc < 25) {
    print('IMC: $imc peso normal');
  } else if (imc >= 25 && imc < 30) {
    print('IMC: $imc sobrepeso');
  } else if (imc >= 30 && imc < 35) {
    print('IMC: $imc Obesidade I');
  } else if (imc >= 35 && imc < 40) {
    print('IMC: $imc Obesidade II');
  } else {
    print('IMC: $imc Obesidade III');
  }
}
