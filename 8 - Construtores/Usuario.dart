class Usuario {
  late String user, senha, nome, cargo;
  late int idade;

  Usuario(this.user, this.senha, {String? nome, String? cargo}) {
    this.nome = (nome == null) ? 'Semnome' : nome;
    this.cargo = cargo ?? 'Usuario';
    print('Construtor resumido com parametros nomeados! ${this.toString()}');
  }

  Usuario.admin(this.user, this.senha, {String? nome}) {
    this.nome = (nome == null) ? 'Semnome' : nome;
    this.cargo = 'Administrador';
    print('Construtor resumido com parametros nomeados! ${this.toString()}');
  }

  void autenticar() {
    var user = 'fma@gmail.com';
    var senha = '123456';

    (this.user == user && this.senha == senha) ? print('Usuario autenticado') : print('Usuario nao autenticado');
  }
}
