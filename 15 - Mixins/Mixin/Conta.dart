abstract class Conta {
  double _saldo = 0, salario = 3000;

  get saldo => this._saldo;
  set depositar(double valor) {
    this._saldo += valor;
  }

  bool declaracaoRenda() => _saldo / 12 < salario;
}
