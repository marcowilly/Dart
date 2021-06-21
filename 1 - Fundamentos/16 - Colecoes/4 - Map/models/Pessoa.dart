class Pessoa {
  static final Map<String, Pessoa> _pessoas = new Map();
  final String nome;
  int idade;
  double peso;

  factory Pessoa(String nome, {int idade = 0, double peso = 0}) {
    if (_pessoas.containsKey(nome)) return _pessoas[nome]!;
    final novaPessoa = Pessoa._privado(nome, idade, peso);
    _pessoas[nome] = novaPessoa;
    return novaPessoa;
  }

  Pessoa._privado(this.nome, this.idade, this.peso);

  static void mostrarDetalhes(String nome) {
    if (_pessoas.containsKey(nome)) {
      print('DETALHES: ${_pessoas[nome]}');
    } else {
      print('$nome nao existe no map de Pessoas');
    }
  }

  static void alterarDetalhes(String nome, {int idade = 0, double peso = 0}) {
    if (_pessoas.containsKey(nome)) {
      _pessoas[nome]!.idade = idade;
      _pessoas[nome]!.peso = peso;
      print('ALTERACAO: ${_pessoas[nome]}');
    } else {
      print('$nome nao existe no map de Pessoas');
    }
  }

  static void mostrarPessoas() {
    print('PESSOAS: $_pessoas');
    _pessoas.forEach((k, v) => print('forEach: $k - $v'));
  }

  @override
  String toString() {
    return 'nome: $nome, idade: $idade, peso: $peso';
  }
}
