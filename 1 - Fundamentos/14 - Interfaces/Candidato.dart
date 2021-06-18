import 'Cidadao.dart';
import 'Presidenciavel.dart';

class Candidato extends Cidadao implements Postagem, Presidenciavel {
  String objetivo;

  Candidato(String nome, this.objetivo, this.postagem, {this.partido = 'sem partido', this.ideologia = 'sem ideologia'}) : super(nome) {
    diretosDeveres();
  }

  @override
  void objetivosPessoais() {
    print('$nome tem o objetivo de $objetivo');
  }

  //Intefaces
  @override
  String postagem;

  @override
  void escreverPostagem() {
    print('Postagem de $nome no facebook: $postagem');
  }

  @override
  String ideologia;

  @override
  String partido;

  @override
  void ideologiaPolitica() {
    print('$nome e candidato com ideologia de $ideologia pelo partido $partido');
  }
}

class Postagem {
  late String postagem;

  void escreverPostagem() {
    print('');
  }
}
