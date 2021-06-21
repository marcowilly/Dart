import 'Conta.dart';
import 'Usuario.dart';

void main() {
  print('Encapsuladores');

  Usuario usuario = new Usuario('Marco', '123456');
  usuario
    ..senha = '1321'
    ..alteracao = true
    ..senha = '12345';
  print('Nome: ${usuario.nome}, senha: ${usuario.senha}');

  Conta conta = new Conta('Leila Martins');
  conta
    ..deposito = 900
    ..deposito = 450
    ..saque = 550
    ..saque = 500;

  print('');

  conta
    ..limite = 700
    ..alterarLimite = true
    ..limite = 1000
    ..alterarLimite = false;

  print('');

  conta
    ..saque = 950
    ..saque = 850;

  print('${conta.informacao}');

  Conta contaVip = new Conta.vip('Marco', limite: 50000);
  contaVip
    ..deposito = 143500
    ..saque = 51000
    ..limite = 100000
    ..saque = 100000;

  print(contaVip.informacao);
}
