class Pessoa {
  late String nome, cor;
  late int idade;
  late double altura;

  Pessoa(this.nome, this.idade, {String? cor, this.altura = 0}) {
    this.cor = (cor == null) ? 'indefinida' : cor;
    print('Construtor resumido com parametros nomeados! ${this.toString()}');
  }
}
