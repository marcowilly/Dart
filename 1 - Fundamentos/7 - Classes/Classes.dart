import 'Conta.dart';
import 'Pessoa.dart';
import 'Usuario.dart';

void main() {
  print('Classes/Objetos');

  Pessoa pessoa = new Pessoa();
  pessoa.nome = 'Marco';
  pessoa.idade = 22;
  print('Nome: ${pessoa.nome}, idade: ${pessoa.idade}');

  Pessoa pessoa1 = Pessoa();
  pessoa1.nome = 'Leila';
  pessoa1.idade = 31;
  print('Nome: ${pessoa1.nome}, idade: ${pessoa1.idade}');

  var pessoa2 = Pessoa();
  pessoa2
    ..nome = 'Wesley'
    ..idade = 1
    ..info();

  Usuario usuario = new Usuario();
  usuario.usuario = 'fma@gmail.com';
  usuario.senha = '123456';
  usuario.autenticar();

  Conta conta = new Conta();
  print('Nome: ${conta.nome}, N˙conta: ${conta.numeroConta}, Saldo: ${conta.consultarSaldo()}');
  conta.calcularSalario(1045, 150, 2);
  conta.depositar(150);
  conta.sacar(50);
}
