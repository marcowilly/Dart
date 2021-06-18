import 'dart:math';

class PessoaFactory {
  static final PessoaFactory instance = new PessoaFactory._construtorNomeado('indefinido');
  late String nome;

  factory PessoaFactory() => instance;

  PessoaFactory._construtorNomeado(this.nome) {}
}

class PessoaInstancia {
  static PessoaInstancia? _instance;
  late String nome;
  late final int _IDENTIDADE;

  factory PessoaInstancia({String nome = 'Indefinido', int? identidade}) {
    identidade ??= Random().nextInt(99999999 + 1);
    return _instance ??= new PessoaInstancia._construtorNomeado(nome, identidade);
  }

  PessoaInstancia._construtorNomeado(this.nome, this._IDENTIDADE);

  get IDENTIDADE => _IDENTIDADE;
}
