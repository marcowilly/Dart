class Multa {
  String descricao, tipoMulta;
  int pontos;

  Multa(this.descricao, this.tipoMulta, this.pontos);

  @override
  String toString() {
    return 'Tipo: $tipoMulta - Descricao: $descricao - Pontos: $pontos';
  }
}
