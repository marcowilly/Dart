void main() {
  funcoesAnonimas();
}

funcoesAnonimas() {
  print('Funcoes anonimas conceito');

  print(''' SINTAXE
  () {
    print('Funcao anonima!');
  }

  () => print('Funcao anonima usando sintaxe Arrow!');
  ''');

  print('Funcoes anonimas como variaveis');

  var anonima = () => print('Variavel anonima');
  anonima();

  var anonimaParametro = (String msg) => print('Variavel anonima $msg');
  anonimaParametro('com parametro');

  print('Funcoes anonimas como parametro');

  void executarFuncao(Function funcao) => funcao();
  executarFuncao(() => print('Funcao anonima passada como parametro'));
}
