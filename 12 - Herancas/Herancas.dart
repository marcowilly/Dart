/*
  * Regras
  - Uma classe classe pode ter somente uma heranca!

  * Construtores
  - Devem obedecer a ordem dos parametros
  - Parametros default devem ser nomeados ou posicionados
  - Tratamento e tipagem de parametros deve ser feito na classe herdeira!
 */
import 'Cao.dart';

void main() {
  print('Heranca de atributos metodos e construtores');

  var cao = new Cao('Perola', 'Vira-lata', 'Femea');
  print('Nome: ${cao.nome}, Raca: ${cao.raca}, Sexo: ${cao.sexo}, Idade: ${cao.idade}, Docil: ${cao.docil}');
  cao
    ..dormir()
    ..alimentar()
    ..acao();

  print('${cao.nome} ${cao.docil! ? 'esta amigavel' : 'nao esta amigavel'}');
}
