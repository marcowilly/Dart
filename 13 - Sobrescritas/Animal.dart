abstract class Animal {
  late String idade;
  late bool? isDocil;
  late bool isColuna;

  Animal.vertebrados(this.idade, {this.isDocil}) {
    this.isColuna = true;
  }

  Animal.inVertebrados(this.idade, {this.isDocil}) {
    this.isColuna = false;
  }

  String tipo() => (isColuna) ? 'Animal vertebrado' : 'Animal invertebrado';

  void dormir() {
    print('Dormindo como um animal');
  }
}
