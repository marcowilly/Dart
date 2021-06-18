class PessoaGetter {
  static final PessoaGetter _instance = new PessoaGetter._construtorNomeado();
  String nome = 'Sem nome';

  PessoaGetter._construtorNomeado();

  static PessoaGetter get instance {
    return _instance;
  }
}
