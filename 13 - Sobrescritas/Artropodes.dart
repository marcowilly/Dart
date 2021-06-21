import 'Animal.dart';

class Artropodes extends Animal {
  Artropodes.insetos(idade, docil) : super.inVertebrados(idade, isDocil: docil);

  Artropodes.aracnideos(idade, docil) : super.inVertebrados(idade, isDocil: docil);

  Artropodes.crustaceos(idade, docil) : super.inVertebrados(idade, isDocil: docil);
}
