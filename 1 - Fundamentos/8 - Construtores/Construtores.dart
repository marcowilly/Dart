import 'Animal.dart';
import 'Objeto.dart';
import 'Pessoa.dart';
import 'Usuario.dart';

void main() {
  print('Construtores');

  Objeto objeto = new Objeto();
  objeto.nome = 'Mesa';
  print('Nome: ${objeto.nome}');

  Animal animal = new Animal('Perola', 'Vira-lata');
  print('Nome: ${animal.nome}, Raca: ${animal.raca}, Idade: ${animal.idade}');

  Pessoa pessoa = new Pessoa('Marco', 22, altura: 1.81);
  print('Nome: ${pessoa.nome}, idade: ${pessoa.idade}, cor: ${pessoa.cor}, altura: ${pessoa.altura}');

  Usuario usuario = new Usuario('fma@gmail.com', '123456', nome: 'Marco');
  print('Usuario: ${usuario.user}, senha: ${usuario.senha}, nome: ${usuario.nome}, cargo: ${usuario.cargo}');
  usuario.autenticar();

  Usuario admin = new Usuario.admin('fma@gmail.com', '123456', nome: 'Fernando');
  print('Usuario: ${usuario.user}, senha: ${usuario.senha}, nome: ${usuario.nome}, cargo: ${usuario.cargo}');
  admin.autenticar();
}
