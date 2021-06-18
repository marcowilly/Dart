import 'dart:math';

class Conta {
  bool alterarLimite = false;
  late int _numeroConta;
  late String _nome;
  double _saldo = 0;
  double _limite = 500;

  Conta(String nome) {
    this._nome = nome;
    this._numeroConta = Random().nextInt(9999);
    print('Conta numero: "${_numeroConta}" Titular: "${_nome}" Criada com sucesso!');
  }

  Conta.vip(String nome, {double limite = 10000}) {
    this.alterarLimite = true;
    this._limite = limite;
    this._nome = nome;
    this._numeroConta = Random().nextInt(9999);
    print('Conta numero: "${_numeroConta}" Titular: "${_nome}" Criada com sucesso!');
  }

  int get numeroConta {
    return this._numeroConta;
  }

  // Get padrao
  /*double*/ get saldo => this._saldo;

  // Set padrao
  set limite(double limite) {
    if (alterarLimite) {
      this._limite = limite;
      print('Limte alterado para o valor: $_limite');
    } else {
      print('Permissao negada! Alteracao: Limite do titular');
    }
  }

  // Get e setter customizado
  String get informacao => 'Titular: ${_nome}, N˙Conta: ${_numeroConta}, Saldo Atualizado: ${_saldo}';

  set deposito(double deposito) {
    if (deposito > 0) {
      this._saldo += deposito;
      print('Deposito valor: $deposito, Saldo atualizado: $_saldo');
    }
  }

  set saque(double saque) {
    if (saque > 0 && saque <= _limite) {
      if (saque <= _saldo) {
        this._saldo -= saque;
        print('Saque: $saque, Saldo Atualizado: $_saldo');
      } else {
        print('Saldo valor: $_saldo insuficiente para saque de $saque');
      }
    } else {
      print('Limite para saque: $_limite');
    }
  }
}
