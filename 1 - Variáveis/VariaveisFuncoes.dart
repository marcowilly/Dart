/**
 * Tipos de variaveis
 *  Num(int, double)
 *  String,
 *  bool,
 *  dynamic
 */
void main() {
  print('Variaveis Funções');

  num pi = 3.4;
  print(pi.floor()); //remove casas decimais de um numero;
  print(pi.round()); // Arredonda para valor mais proximo;
  print(pi.ceil()); // Se tiver casas decimais completa ate inteiro mais proximo;
  print(pi.clamp(3, 3.1)); // Retorna numero proximo ao valor inteiro;
  print(pi.compareTo(3)); // 1 - se maior, 0 - se igual, -1 - se menor;
  print(pi.remainder(3)); // Retorna o resto da divisão de dois valores;
  print(pi.toInt()); // Convert double para inteiro;
  print(2.toDouble()); // Convert int para double;
  print(pi.toString()); // Convert double para String;
  print(pi.toStringAsFixed(1)); // Limita numero de casas decimais apos ponto flutuante;
  print(pi.truncate()); // Descarta valores apos ponto flutuante;
  print(pi.isNegative); // Verifica se numero é negativo;
  print((pi / 0).isInfinite); // Verifica se é numero infinito;
  print(12.gcd(14)); // Varifica maximo divisor comum;
  print('1'.padLeft(2, '0')); // Adiciona valor de acordo com a quantidade determinada caso numero seja menor.

  print('');

  String nome = 'Marco';
  String nomeCompleto = '\t Marco Willy Azevedo Gomes';
  print(nome.toLowerCase()); // Convert todos caracters para minusculo;
  print(nome.toUpperCase()); // Convert todos caracters para maiusculo;
  print(nomeCompleto.trim()); // Remove espaços do inicio e do fim;
  print(nomeCompleto.split(" ")); // Retorna array dividido de acordo com o parametro passado;
  print(nome.split("")); // Divide variavel em um array de caracters;
  print(nome.substring(3, 5)); // Retorna sequencia de caracters de acordo com a indexacao;
  print(nome.startsWith("M")); // Verifica se variavel inicia com o parametro passado;
  print(nome.startsWith("a", 1)); //Verifica se variavel inicia com o parametro passado e indice indicado;
  print(nome.replaceAll("a", "o")); // Substitui valor do primeiro parametro para valor do segundo parametro;
  print(nome.replaceFirst("M", "N")); // Substitui primeira ocorrencia do valor do primeiro parametro para o valor do segndo;
  print(nome.replaceFirst('o', 'i', 4)); // Substitui primeira ocorrencia do valor do primeiro parametro para o valor do segndo apartir do index;
  print(nome.replaceRange(3, 5, "")); // Substitui do index inicial ao final para o valor indicado;
  print(nomeCompleto.trim().split(' ')); // Cria array apos remover espaços vazios;
  print(nome.contains('m')); // Verifica se variavel tem valor indicado;
  print(nome.contains('a', 1)); // Verifica se variavel tem valor indicado no index especificado;
  print(nome.indexOf("Mar")); // Retorna index de acordo com valor passado;
  print(nome.length); // Retorna a quantidade de caracters na String;
  print(nome.endsWith("o")); // Verifica se variavel termina com o valor passado;
  /**
   * Verifica se valor passado é igual ao valor da variavel;
   * 0 - Igual
   * 1 - Possui o valor
   * -1 - Não possui o valor
   */
  print(nome.compareTo("Marco"));
  print(''.isEmpty); // Verifica se é uma String vazia;
  print(double.parse('12.55')); // Convert String para double
  print('1' is String); // Retorna bool para verifica de tipo de valor;
  print(int.parse('11') is int); // Verifica se numero recem convetido de String para int é um int;
  print(nome.lastIndexOf('a')); // Retorna o ultimo index da variavel que possui esse valor passado;
  String sopa = 'Sopa de letrinhas';
  int index = sopa.indexOf(' de ');
  print('A sopa é ${sopa.substring(index).trim()}');

  print('');

  num numero = 3.14;
  print(numero is double); // true
  print(numero is! double); //false
}
