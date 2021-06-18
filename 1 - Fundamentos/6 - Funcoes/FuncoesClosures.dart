void main() {
  closuresSemRetorno();
  closuresComRetorno();
  closuresComObjetos();
}

closuresComObjetos() {
  var novoObjeto = () {
    var id = 0;
    var objetoCriado = (String nome, descricao) {
      //return 'id: ${(++id).toString().padLeft(2, '0')}, nome: $nome, descricao: $descricao'; // retorna array
      //return {'id': (++id).toString().padLeft(2, '0'), 'nome': nome, 'descricao': descricao}; // retorna map
      return Objeto.fromMap({'id': (++id).toString().padLeft(2, '0'), 'nome': nome, 'descricao': descricao}); // retorna array
    };
    return objetoCriado;
  };

  var objeto = novoObjeto();
  print(objeto);

  var listaObjetos = [objeto('Fernando', 1.99)];
  listaObjetos.add(objeto('Iphone', 3000.0));
  listaObjetos.add(objeto('Fones', 100.0));

  Function porcentagem(desconto) => (valor) => desconto * valor;
  var descontarDez = porcentagem(.9);

  for (var objeto in listaObjetos) {
    print((objeto.descricao is num) ? descontarDez(objeto.descricao) : objeto.descricao);
  }
}

class Objeto {
  String? id, nome;
  dynamic descricao;

  Objeto({this.id, this.nome, this.descricao});
  factory Objeto.fromMap(Map<String, dynamic> map) {
    return Objeto(
      id: map['id'].toString(),
      nome: map['nome'],
      descricao: map['descricao'],
    );
  }
}

closuresComRetorno() {
  print('Funcoes - Closures com retorno');

  Function somar(int a) {
    return (b) {
      return a + b;
    };
  }

  var somarDez = somar(10);
  print(somarDez(15));

  Function porcentagem(desconto) => (valor) => desconto * valor;
  var descontarDez = porcentagem(.9);
  var descontarVinte = porcentagem(.8);
  print(descontarDez(100));
  print(descontarVinte(200));
}

closuresSemRetorno() {
  print('Funcoes - Closures sem retorno');

  var saudacao = (String nome) {
    var mensagem = (complemento) => print('Ola $nome! $complemento');
    mensagem('Seja bem vindo!');
  };

  saudacao('Marco Willy');
}
