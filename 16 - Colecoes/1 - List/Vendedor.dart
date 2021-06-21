import 'Venda.dart';

class Vendedor {
  String nome;
  List<Venda> vendas;

  Vendedor(this.nome, this.vendas);

  @override
  String toString() {
    return '''
    Vendedor: $nome
    Vendas: ${vendas.length} ${vendas.map((e) => 'R\$ ${e.preco}').toList()}
    Total: R\$ ${vendas.fold(0, (num p, t) => p + t.preco)}
    ''';
  }
}
