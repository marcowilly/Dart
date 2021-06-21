import 'dart:math';

class Pessoa {
  String nome, sobrenome;
  late int _identidade;

  Pessoa(this.nome, this.sobrenome, {int? identidade}) {
    this._identidade =
        (identidade == null) ? Random().nextInt(99999999) : identidade;
  }

  get identidade => _identidade;

  @override
  String toString() {
    return 'Nome: $nome - Sobrenome: $sobrenome - Identidade: $_identidade';
  }
}
