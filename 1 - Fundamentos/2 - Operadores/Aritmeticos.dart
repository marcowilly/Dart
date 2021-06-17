void main() {
  print('Operadores Aritmeticos (+, -, *, /, ~/, %, +=, ++, --, -=, =??)');

  var peso = 10;
  peso += 5; //15
  print(++peso); //16

  var a, b, c, d, e, f;
  a = 3;
  b = a--; // Decrementa apos atribuição
  print('A: $a, B: $b');

  c = ++a / --b;
  print('A: $a, B: $b, C: $c');

  d = a ~/ b;
  print('A: $a, B: $b, C: $c, D: $d');

  var valorA = 10, valorB = 2; // Retorna maior numero inteiro divisivel
  print('Ex: 8 ~/ 2 = ${valorA ~/ valorB}');

  e = 1;
  f = e;
  f = null; // nula
  f ??= ++e; // variavel a esquerda so recebe ovalor a direita se for nulo.
  print('A: $a, B: $b, C: $c, D: $d, E: $e, F: $f');

  var x, y, z;
  z = 1;
  x = y ?? z; // A variavel a esquerda recebe o valor da primeira variavel a direita caso nao seja nula.
  print('X: $x, Y: $y, Z: $z');

  var nome = null;
  print('nome: ${nome ?? 'Fernando'}\n'); // Se a variavel for nula recebe o valor String.

  var numero = 12;
  var par = numero % 2 == 0; // % - Mostra o resto da divisao.
  var impar = numero % 2 != 0; // % - Mostra o resto da divisao.
  var positivo = numero >= 0;
  var negativo = numero < 0;
  print('Numero: $numero, Par: $par, Impar: $impar, Positivo: $positivo, Negativo: $negativo');

  var multiplo = 3;
  print('Numero: $numero é multiplo de $multiplo? ${numero % multiplo == 0}');

  int dividendo = 19, divisor = 4;
  double quociente = dividendo / divisor;
  int resto = dividendo % divisor;
  bool exata = resto == 0;
  print('Quociente: $quociente, Exata: ${exata}, Resto: $resto');
}
