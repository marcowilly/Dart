import 'dart:math';

class Conta {
  String nome = 'Marco';
  int numeroConta = new Random().nextInt(10000 + 1);
  double saldo = 0;

  double desconto(int faltas) => (faltas > 1)
      ? 0.8
      : (faltas == 1)
          ? 0.9
          : 0;

  void calcularSalario(double salario, double bonus, int faltas) {
    var salarioCalculado = this.saldo = (salario * desconto(faltas)) + bonus;
    print('Salario: $salarioCalculado, Bonus: $bonus, Faltas: $faltas');
  }

  double consultarSaldo() => this.saldo;

  void depositar(double deposito) {
    this.saldo += deposito;
    print('Deposito: $deposito, Saldo: $saldo');
  }

  void sacar(double valor) {
    if (this.saldo >= valor) {
      this.saldo -= valor;
    }
    print('Saque: $valor, Saldo: $saldo');
  }
}
