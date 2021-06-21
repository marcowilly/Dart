import 'Conta.dart';
import 'Cidadao.dart';
import 'Elegivel.dart';
import 'Postagem.dart';
import 'Presidenciavel.dart';

class Candidato extends Cidadao with Elegivel, Conta implements Postagem, Presidenciavel {
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

  @override
  void prestacaoContas() {
    elegivel = super.declaracaoRenda();
    if (elegivel) {
      print('Candidato $nome passou na prestacao de contas\nesta altorizado a concorrer nas eleicoes 2018');
    } else {
      print('Candidato $nome foi barrado na prestacao de contas!\nSaldo $saldo excede a renda declarada para Presidente!');
    }
  }
}
