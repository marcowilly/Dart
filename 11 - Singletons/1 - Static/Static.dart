/*
  * Singleton
    - E um padrao de projeto para que exista apenas uma instancia da classe.
    - O construtor nomeado privado sem o construtor default impede de instanciar a classe.
  * Static
    - A instancia pode ser acessada diretamente. 
*/
import 'PessoaStatic.dart';

void main() {
  print('Singletons - Static');

  print(PessoaStatic.instance.nome = 'Wesley');

  var p1 = PessoaStatic.instance;
  var p2 = PessoaStatic.instance;
  p1.nome = 'Leila';
  print(PessoaStatic.instance.nome);

  p2.nome = 'Choe';
  print(PessoaStatic.instance.nome);
  print(identical(p1, p2));
  print(p2 == PessoaStatic.instance);
}
