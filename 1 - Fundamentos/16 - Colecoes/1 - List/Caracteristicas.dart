class Caracteristica {
  String tipo, combustivel;
  int passageiros, potencia;

  Caracteristica(this.tipo, this.passageiros, this.potencia, this.combustivel);

  @override
  String toString() {
    return 'Tipo: $tipo - Combustivel: $combustivel - Passageiros: $passageiros - Potencia: $potencia';
  }
}
