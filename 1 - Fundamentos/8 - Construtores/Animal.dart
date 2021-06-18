class Animal {
  late String nome, raca;
  late int idade;

  Animal(String nome, [String raca = '', int idade = 0]) {
    this.nome = nome;
    this.raca = raca;
    this.idade = idade;
    print('Contrutor com parametros default! ${this.toString()}');
  }
}
