class Usuario {
  late String usuario;
  late String senha;

  void autenticar() {
    var usuario = 'fma@gmail.com';
    var senha = '123456';

    if (this.usuario == usuario && this.senha == senha) {
      print('Usuario autenticado');
    } else {
      print('Usuario nao autenticado');
    }
  }
}
