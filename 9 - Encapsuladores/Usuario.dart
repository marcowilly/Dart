class Usuario {
  late bool alteracao = false;
  late String nome;
  late String _senha;

  Usuario(this.nome, String senha) {
    this._senha = senha;
  }

  String get senha {
    return _senha;
  }

  set senha(String senha) {
    if (alteracao) {
      this._senha = senha;
      print('Sucesso: senha alterada!');
    } else {
      print('Erro: Acesso negado!');
    }
  }
}
