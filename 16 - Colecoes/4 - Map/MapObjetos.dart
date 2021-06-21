import 'models/Carro.dart';
import 'models/Pessoa.dart';

void main() {
  print('Colecoes - Map Objetos');

  Carro c1 = new Carro('Honda', 'Civic');
  Carro c2 = new Carro('Toyota', 'Corola');
  Carro c3 = new Carro('Fiat', 'Palio');
  Map<String, Carro> carros = {'0': c1, '1': c2};
  carros['2'] = c3;

  for (var i = 0; i < carros.length; i++) {
    print(
        'For: $i - ${carros['${i}']!.modelo}'); // Se ordenado por String ou num pode usar for
  }
  for (String chave in carros.keys) {
    final carro = carros[chave];
    print('forIn: $chave - ${carro!.modelo}');
  }
  carros.forEach((k, v) => print('forEach: $k - ${v.modelo}'));

  print('Colecoes - Map Singletons');
  Pessoa p1 = new Pessoa('Marco', idade: 22, peso: 75);
  Pessoa p2 = new Pessoa('Leila', idade: 31, peso: 60);
  Pessoa('Marco', idade: 63);
  Pessoa('Leila', idade: 13);
  Pessoa('Chloe');
  Pessoa.mostrarPessoas();
  p1.peso = 70;
  Pessoa.mostrarDetalhes('Marco');
  p2.peso = 61.1;
  Pessoa.alterarDetalhes('Chloe', idade: 1, peso: 7);
  Pessoa.mostrarPessoas();
}
