import 'dart:collection';

void main() {
  linkedHashSet();
  hashSet();
  splayTreeSet();
}

/*
  * SplayTreeSet
    - Se organiza automaticamente deixando os elementos em ordem crescente
    - Por ser uma arvore de comparacoes nao pode conter elementos null 
 */

splayTreeSet() {
  print('Colecoes - Set: SplayTreeSet');

  SplayTreeSet<String> splayTreeSet = new SplayTreeSet();
  print('Implementacao: ${splayTreeSet.runtimeType}'); //SplayTreeSet<String>
  splayTreeSet.add('info 1');
  splayTreeSet.add('info 4');
  splayTreeSet.add('info 2');
  splayTreeSet.add('info 3');
  print(splayTreeSet);

  for (var i = 0; i < splayTreeSet.length; i++) {
    print('For: ${splayTreeSet.elementAt(i)}');
  }
  for (var element in splayTreeSet) {
    print('Forin: $element');
  }
  splayTreeSet.forEach((e) => print('forEach: $e'));
}

/*
  * HashSet
    - Coleçao de elementos unicos e desordenados! 
 */

hashSet() {
  print('Colecoes - Set: HashSet');

  HashSet<String> hashSet = new HashSet();
  HashSet<int> hashSet1 = new HashSet();
  HashSet<int> hashSet2 = new HashSet();
  print('Implementacao: ${hashSet.runtimeType}'); //_HashSet<String>
  hashSet.add('A');
  hashSet.add('B');
  hashSet.add('C');
  hashSet.add('D');
  hashSet1.add(1);
  hashSet1.add(2);
  hashSet1.add(3);
  hashSet2.add(11);
  hashSet2.add(22);
  hashSet2.add(33);
  print('$hashSet\n$hashSet1\n$hashSet2');

  for (var i = 0; i < hashSet.length; i++) {
    print('For: ${hashSet.elementAt(i)}');
  }
  for (var elemento in hashSet2) {
    print('Forin: ${elemento}');
  }
  hashSet2.forEach((e) => print('forEach: $e'));
}

/*
  * Set
    - Coleçao de elementos unicos e ordenados entre chaves {}. Nao tem acesso a indice!  
 */

linkedHashSet() {
  print('Colecoes - Set - LinkedHashSet');

  Set<int> setInt = new Set();
  print('Implementacao: ${setInt.runtimeType}'); //_CompactLinkedHashSet<int>
  //setInt[0] = 0; //Não tem acesso a indice
  setInt.add(13);
  setInt.add(13);
  //setInt.add(null); //So pode conter nulos se tipo conter ?
  setInt.add(17);
  setInt.remove(13);
  print(setInt); //Representada por chaves

  for (var i = 0; i < setInt.length; i++) {
    print('For: ${setInt.elementAt(i)}');
  }
  for (var elemento in setInt) {
    print('ForIn: ${elemento}');
  }
  setInt.forEach((e) => print('forEach: $e'));

  Set<int> listaA = {0, 1, 2, 3, 4};
  Set<int> listaB = {3, 4, 5, 6, 7};
  print(listaA.difference(listaB));
  print(listaA.union(listaB));
  print(listaA.intersection(listaB));
  print(listaA.lookup(5));
}
