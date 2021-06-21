/*
  * Conceito:
    - List é uma colecao dinamica e ordenada de elementos entre colchetes []
    - forEach: Aplica uma funcao anonima a cada elemento de nossa colecao
    - Todo array é um list<?>
 */
import 'dart:math';

void main() {
  listForEach();
  listExpand();
  listMap();
  listEvery();
  listWhere();
  listReduce();
  listFold();
}

/*
  * Fold
    - Compara os elementos da colecao retornando 1 unico elemento resultante
    - O valor inicial se torna o anterior e o indice 0 se torna o atual
 */

listFold() {
  print('Colecoes - List Fold');

  List<int> numerosPares = List.generate(6, (i) => i * 2);
  print(numerosPares);

  int valorInicial = 10;
  int resultado = numerosPares.fold(valorInicial, (anterior, atual) {
    print('$anterior + $atual');
    return anterior + atual;
  });
  print('Resultado: $resultado');

  valorInicial = 30;
  resultado = numerosPares.fold(valorInicial, (anterior, atual) {
    print('$anterior - $atual');
    return anterior - atual;
  });
  print('Resultado: $resultado');
}

/*
  * Reduce
   - Compara os elementos da colecao retornando 1 unico elemento resultante
   - Ao interagir com os elementos o indice 0 se torna o anterior, indice 1 se torna o atual 
 */

listReduce() {
  print('\n*** Colecoes - List reduce ***');

  List<int> numerosPares = List.generate(6, (i) => i * 2);
  print(numerosPares);

  int resultado = numerosPares.reduce((anterior, atual) {
    print('$anterior + $atual');
    return anterior + atual; // o retorno sera o proximo anterior!
  });
  print('Resultado: $resultado');

  List<bool> boleanas = [true, false, !true, !false];
  bool and = boleanas.reduce((anterior, atual) => anterior && atual);
  bool or = boleanas.reduce((anterior, atual) => anterior || atual);
  print('AND: $and, OR: $or');

  List<int> idades = [36, 12, 18, 31, 17, 23];
  int maisNovo =
      idades.reduce((value, element) => (value > element) ? element : value);
  int maisVelho =
      idades.reduce((value, element) => (value < element) ? element : value);
  int media = idades.reduce((value, element) => value + element);
  print(
      'Mais novo: $maisNovo, Mais velho: $maisVelho, Media: ${(media / idades.length).toStringAsFixed(2)}');
}

/*
  * Where
    - Filtra os elementos da colecao criando uma nova de mesmo tamanho ou menor
*/

listWhere() {
  print('\n*** Colecoes - List where ***');

  List<int> idades = [36, 12, 18, 31, 17, 23];
  print(idades.where((element) => element is int).toList());
  print(idades.whereType<int>());

  List<int> adultos = idades.where((int e) => e > 17).toList();
  var crianca = idades.singleWhere((element) => element < 12, orElse: () => 0);
  int menor = idades.lastWhere((element) => element.toString().startsWith('4'),
      orElse: () => 0);
  print('Adultos: $adultos, Menor: $menor, Crianca: $crianca');
}

/*
  * Every
   - Faz o teste em todos os elementos com o operadors logico && retornando (true ou false)
 */

listEvery() {
  print('\n*** Colecoes - List every ***');

  List<int> inteiros = [0, 1, 2, 3, 4, 5];
  bool resultado = inteiros.every((element) => element >= 0);
  print(resultado);

  List<String> textos = List.from(['Fernando', 'Leila', 'Chloe']);
  resultado = textos.every((e) => e.contains('e'));
  print(resultado);
}

/*
  * Map
    - Transforma/seleciona os elementos de uma colecao criando uma nova do mesmo tamanho! 
 */

listMap() {
  print('\n*** Colecoes - List Map ***');

  List<String> frutas = ['Morango', 'Banana', 'Tomate'];
  List<String> frutasMapeadas = frutas.map((e) => '$e e uma fruta!').toList();
  print(frutasMapeadas);

  List<int> inteiros = [1, 5, 10];
  var incrementar = (int e) => ++e;
  final dobro = (int e) => e * 2;

  List<int> inteirosMapeados = inteiros.map(incrementar).map(dobro).toList();
  print(inteirosMapeados);

  List<double> doubles = [2.75, 5.5, 7.25];
  final triplo = (e) => e * 3;
  final moeda =
      (e) => 'R\$ ${e.toDouble().toStringAsFixed(2).replaceFirst('.', ',')}';

  porcentagem(desconto) => (valor) => desconto * valor; //closure

  List<dynamic> doubleMapeados =
      doubles.map(triplo).map(porcentagem(0.9)).map(moeda).toList();
  print(doubleMapeados);
}

/*
  * Expand
    - Cria uma nova lista expandindo ou concatenando os elementos
*/
listExpand() {
  print('\n*** Colecoes - List Expand ***');

  var lista = [
    [1, 2],
    [3, 4]
  ];

  List<dynamic> listaFlat = lista.expand((element) => element).toList();
  List<dynamic> listaDuplicada = listaFlat.expand((e) => [e, e]).toList();
  print('\nlistaFlat: $listaFlat \nListaDuplicada: $listaDuplicada');

  List<num> numeros = [1, 2.5, 5, 7.25, 10];
  List<int> inteiros = [1, 5, 10];
  List<double> doubles = [2.5, 7.25];

  List<dynamic> listaDinamica = [1];
  print(listaDinamica);
  print(listaDinamica = [1, 5, 10] + [2, 7]); //concatenando
  print(listaDinamica = []..addAll(inteiros)..addAll(doubles));
  print(listaDinamica = [0, ...inteiros, 15]); // Operador spread (espalhar)
  print(listaDinamica = [
    ...[],
    ...inteiros,
    if (doubles is List<double>) ...doubles
  ]);
  print(listaDinamica = [...[], for (var numero in numeros) numero]);
}

listForEach() {
  print('\n*** Colecoes - List forEach ***');

  var array = [0, 2.5, 5, 7.25, 10];
  array.forEach((element) {
    print('forEach: $element');
  });

  List<int> inteiros = [1, 5, 10];
  List<double> doubles = [2.5, 7.25];
  List<bool> booleanas = [true, false, !true, !false];
  List<String> frutas = ['Morango', 'Banana', 'Tomate'];

  print('\nImplementacao: ${frutas.runtimeType}');
  print(
      '\nBoleanas[3]: ${booleanas[inteiros.length] ? 'verdadeiro' : 'falso'}');

  frutas.insert(0, 'Abacaxi');
  frutas.add('Laranja');
  frutas.forEach((e) => print('forEach: $e'));
  frutas.removeLast();
  frutas.removeWhere((element) => element == 'Banana');
  print(frutas);
  print(frutas.elementAt(2));
  print(frutas.contains('abacaxi'));

  List<num> numeros = List.from(inteiros)
    ..addAll(doubles)
    ..shuffle()
    ..sort();
  print('\n$numeros');

  List<dynamic> lista = [2];
  lista = numeros.take(3).skip(1).take(2).toList();
  print('Lista: $lista');

  // Geradores de lista
  List<String> listaPreenchida = List.filled(2, 'elemento');
  List<String> listaGerada = List.generate(2, (index) => 'Nome: $index');
  List<double> listaPrecos = List.generate(
      5,
      (i) =>
          double.parse(((i + 1) * Random().nextDouble()).toStringAsFixed(2)));
  print(
      'ListaPreenchida: $listaPreenchida \nListaGerada: $listaGerada \nListaPrecos: $listaPrecos');
  listaPrecos.forEach((element) => print('forEach: $element'));
}
