import 'Caracteristicas.dart';
import 'Carro.dart';
import 'Multa.dart';
import 'Pessoa.dart';
import 'Proprietario.dart';
import 'Venda.dart';
import 'Vendedor.dart';

void main() {
  print('*** Colecoes - List manipulando objetos ***');

  Pessoa p1 = new Pessoa('Marco', 'Willy', identidade: 12356736);
  Pessoa p2 = new Pessoa('Leila', 'Martins', identidade: 85755784);

  List<Pessoa> pessoas = [p1, p2];
  pessoas.add(new Pessoa('Chloe', 'Martins'));

  for (Pessoa p in pessoas) {
    print('For: $p');
  }

  print('');

  pessoas.forEach((it) {
    print('forEach: $it');
  });

  print('\n*** Colecoes - List ordenando Objetos ***');
  List<Vendedor> vendedores = [];
  vendedores.add(new Vendedor('Marco', [
    new Venda('iphoneX', 4199.99),
    new Venda('macbookPro', 5300.00),
    new Venda('Galaxy S10', 3500.25)
  ]));

  vendedores.add(new Vendedor('Leila', [
    new Venda('iphone8', 3000.00),
    new Venda('Galaxy S10', 3500.25),
    new Venda('iphoneX', 4199.99)
  ]));

  vendedores.add(new Vendedor('Chloe', [
    new Venda('iphoneX', 4199.99),
    new Venda('iphoneX', 4199.99),
    new Venda('Galaxy S10', 3500.25)
  ]));

  // Organizar lista de vendas pela soma total
  vendedores.sort((a, b) => (a.vendas
      .fold(0, (num p, t) => p + t.preco)
      .compareTo(b.vendas.fold(0, (num p, t) => p + t.preco))));

  // Organizar as vendas de cada vendedores
  vendedores
      .forEach((e) => e.vendas.sort((a, b) => a.preco.compareTo(b.preco)));

  vendedores.forEach((element) => print(element));

  print('\n*** Colecoes - List escopo de loops em Objetos ***');

  List<Proprietario> proprietarios = [];
  proprietarios.add(new Proprietario('Fernando', 'Rua dos tolos, 0', [
    new Carro('Honda', 'Civic', 'Abc1234',
        new Caracteristica('Passeio', 5, 130, 'Gasolina'),
        multas: [
          new Multa('Excesso de velocidade', 'Gravissima', 7),
          new Multa('Estacionar local proibido', 'Grave', 5)
        ]),
    new Carro('Fiat', 'Palio', 'CBA',
        new Caracteristica('Passeio', 5, 103, 'Gasolina'),
        multas: [
          new Multa('Excesso de velocidade', 'Gravissima', 7),
          new Multa('Excesso de velocidade', 'Gravissima', 5)
        ])
  ]));

  proprietarios.forEach((e) => e.carros.forEach((e) => e.multas.sort(
      (a, b) => a.pontos.compareTo(b.pontos)))); // Multas em ordem crescente

  proprietarios.forEach((p) => p.carros.forEach((c) => c.multas.forEach((m) {
        print(p);
      })));
}
