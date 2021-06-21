/*
  * Conceito
    - Map e uma colecao dinamica e customizavel de chaves e valores entre {}. As chaves sao unicas, e os valores nao e repetem
*/

void main() {
  linkedHashMap();
  mapMap();
  everyMap();
  whereMap();
  reduceMap();
}

/*
  * Reduce
    - Compara os elementos da colecao retornando 1 unico elemento resultante
    - Ao interagir com os elementos o indice 0 se torna o anterior, indice 1 se torna o atual
 */

reduceMap() {
  print('Colecoes - Map Reduce');

  List<Map<String, dynamic>> alunos = [
    {'nome': 'Fernando', 'nota': 7.3, 'bolsista': false},
    {'nome': 'Leila', 'nota': 9.2, 'bolsista': true},
    {'nome': 'Chloe', 'nota': 9.8, 'bolsista': true},
    {'nome': 'Bartolomeu', 'nota': 8.7, 'bolsista': false},
  ];
  final dynamic bolsistas = (e) => e['bolsista'] as bool;
  final dynamic nomes = (e) => e['nome'];
  final dynamic notas = (e) => e['nota'];
  final dynamic soma = (p, c) => p + c;
  List<dynamic> bolsistasNomes = alunos.where(bolsistas).map(nomes).toList();
  List<Map<String, dynamic>> medias = alunos.where(bolsistas).toList();
  var bolsistasMedia = medias.map(notas).reduce(soma) / medias.length;
  bool todosBolsistas = alunos.map(bolsistas).reduce((p, c) => p && c);
  bool algumBolsista = alunos.map(bolsistas).reduce((p, c) => p || c);
  print(
      'Todos sao Bolsistas ? ${todosBolsistas ? 'Sim' : 'Nao'}\nAlgum bolsista ? ${algumBolsista ? 'Sim' : 'Nao'}');
  print('Alunos bolsistas: $bolsistasNomes - Media notas: $bolsistasMedia');

  List<dynamic> funcionarios = [
    {'nome': 'Leila', 'genero': 'M', 'pais': 'Brasil', 'salario': 1599.70},
    {
      'nome': 'Fernando',
      'genero': 'H',
      'pais': 'Argentina',
      'salario': 1234.36
    },
    {'nome': 'Chloe', 'genero': 'M', 'pais': 'Brasil', 'salario': 1730.30}
  ];
  final dynamic brasileiros = (e) => e['pais'] == 'Brasil';
  final dynamic mulheres = (e) => e['genero'] == 'M';
  final dynamic menorSalario = (p, c) => (p['salario'] < c['salario'])
      ? p['salario']
      : c['salario']; // filtro para salarios
  final dynamic funcMenorSalario = (p, c) =>
      (p['salario'] < c['salario']) ? p : c; // filtro para funcionarios
  List<dynamic> selecionados =
      funcionarios.where(brasileiros).where(mulheres).toList();
  print(selecionados);
  print(selecionados.reduce(menorSalario));
  Map<String, dynamic> funcionario = selecionados.reduce(funcMenorSalario);
  print(
      'Funcionario: ${funcionario['nome']} - Salario: ${funcionario['salario']}');
}

/*
  * Where
    - Filtra os elementos da colecao criando uma nova do mesmo tamanho ou menor 
 */

whereMap() {
  print('Colecoes - Map Where');

  List<Map<dynamic, dynamic>> produtos = [
    {'nome': 'notebook', 'preco': 2499, 'fragil': true},
    {'nome': 'Ipad', 'preco': 4199, 'fragil': true},
    {'nome': 'Iphone', 'preco': 2299, 'fragil': true},
    {'nome': 'Magic Mouse', 'preco': 299, 'fragil': false},
  ];
  final fragil = (e) => e['fragil'] == true;
  final nome = (e) => e['nome'];
  List<dynamic> resultado = produtos.where(fragil).map(nome).toList();
  print('Produtos frageis: $resultado');

  List<Map<String, dynamic>> pessoas = [
    {'nome': 'Fernando', 'idade': 36},
    {'nome': 'Leila', 'idade': 31},
    {'nome': 'Leandro', 'idade': 17}
  ];
  List<Map<String, dynamic>> maiores =
      pessoas.where((e) => e['idade'] >= 21).toList();
  Map<String, dynamic> comecaComL =
      pessoas.firstWhere((e) => e['nome'].startsWith('L'), orElse: () => Map());
  Map<String, dynamic> menores =
      pessoas.singleWhere((e) => e['idade'] < 18, orElse: () => Map());
  final dynamic idades = (e) => e['idade'];
  final dynamic soma = (p, c) => p + c;
  var media = (pessoas.map(idades).reduce(soma)) / pessoas.length;
  print(
      'Menores: $menores\nMedia idades: $media\nMaiores: $maiores\nNomes com L: $comecaComL');
}

/*
  * Every:
    - Faz o teste em 'todos' elementos com o operador logico && retornando (true ou false)
 */

everyMap() {
  print('Colecoes - Map Every');

  List<Map<String, dynamic>> pessoas = [
    {'nome': 'Marco', 'idade': 22},
    {'nome': 'Lucio', 'idade': 60},
    {'nome': 'Leila', 'idade': 31},
  ];
  print(pessoas.every((e) => e.containsKey('nome')));
  print(pessoas.every((e) => e['idade'] >= 22));
  bool maiores = pessoas.every((e) => e['nome'].startsWith('L'));
  print(maiores);
}

/*
  * Map:
    - Transforma/seleciona os elementos de uma colecao criando uma nova do mesmo tamanho 
 */

mapMap() {
  print('Colecoes - Map map');

  List<Map<String, dynamic>> carrinho = [
    {'nome': 'Borracha', 'preco': 3.45},
    {'nome': 'Caderno', 'preco': 13.9},
    {'nome': 'Kit lapis', 'preco': 41.22},
    {'nome': 'Caneta', 'preco': 7.5}
  ];

  porcentagem(desconto) => (valor) => desconto * valor['preco'];

  final moeda =
      (e) => 'R\$ ${e.toDouble().toStringAsFixed(2).replaceFirst('.', ',')}';

  List<String> precos1 = carrinho.map(porcentagem(.9)).map(moeda).toList();
  print('Lista preco1: $precos1');

  List<String> precos2 = carrinho
      .map((e) => e.update('preco', (value) => value * 0.9))
      .map(moeda)
      .toList();
  print('Lista preco2: $precos2');

  double precoMedio =
      carrinho.map((e) => e['preco']).reduce((p, c) => p + c) / carrinho.length;
  print('Preco medio: ${precoMedio.toStringAsFixed(2)}');

  List<Map<String, Object>> escola = [
    {
      'nome': 'Turma T1',
      'alunos': [
        {'nome': 'Fernando', 'nota': 8.1},
        {'nome': 'Leila', 'nota': 9.3},
      ]
    },
    {
      'nome': 'Turma T2',
      'alunos': [
        {'nome': 'Chloe', 'nota': 8.9},
        {'nome': 'Bartolomeu', 'nota': 7.3},
      ]
    },
  ];

  List<dynamic> alunosEscola =
      escola.map((e) => e['alunos']).expand((dynamic a) => a).toList();
  print('Lista Ordenada: $alunosEscola');

  alunosEscola.sort((a, b) => a['nota'].compareTo(b['nota']));
  print('Lista Ordenada: $alunosEscola');

  double mediaNotas =
      alunosEscola.map((e) => e['nota']).reduce((p, c) => p + c) /
          alunosEscola.length;

  print('Media alunos: ${mediaNotas.toStringAsFixed(2)}');

  var notasAlunos = escola
      .map((e) => e['alunos'])
      .expand((dynamic e) => e)
      .map((e) => e['nota'])
      .toList();
  print('Lista Ordenada: $notasAlunos');
  alunosEscola.forEach((e) => print('${e['nome']} - ${e['nota']}'));
}

linkedHashMap() {
  print('Colecoes - Map: linkedHashMap');

  List<String> nomes = ['Fernando', 'Leila'];
  Map<int, String> nomesMap = nomes.asMap();
  print('Nomes: $nomesMap');
  nomesMap.forEach((k, v) => print('$k: $v'));

  Map<String, dynamic> frutas = Map();
  frutas['Banana'] = 'Amarelo';
  frutas['Banana'] = 'Amarelo';
  frutas['Goiaba'] = 'Amarelo';
  frutas['Maca'] = 'Vermelho';
  print('$frutas');
  print(frutas.containsKey('Banana'));
  print(frutas.containsValue('Azul'));
  print(frutas['Banana']);
  frutas.clear();
  print('$frutas');

  Map<String, dynamic> usuario =
      Map.from({'nome': 'Marco', 'idade': 22, 'peso': 75.5});
  usuario.update('nome', (value) => '$value Willy');
  usuario.update('idade', (value) => ++value);
  usuario.update('peso', (value) => 70, ifAbsent: () => 'indefinido');
  print(usuario);
  usuario.removeWhere((key, value) => key == 'peso' && value == 70);
  usuario.update('peso', (value) => 70, ifAbsent: () => 'indefinido');
  usuario.putIfAbsent('altura', () => 1.83);
  usuario.addAll({'sexo': 'maculino', 'casado': false});
  print(usuario);
  print('Chaves: ${usuario.keys} - valores ${usuario.values}');

  Map<int, dynamic> numeros = {0: 'zero', 1: 'um', 2: 'dois'};
  print(numeros);
  print(numeros
      .map((key, value) => MapEntry(key, '${value.toString().toUpperCase()}')));
  for (var chave in numeros.keys) {
    print('forIn: $chave');
  }
  for (var valor in numeros.values) {
    print('forIn: $valor');
  }
  for (var key in numeros.keys) {
    final valor = numeros[key];
    print('forIn: $key - $valor');
  }
}
