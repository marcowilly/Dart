class Cep {
  String? cep;
  String? logradouro;
  String? complemento;
  String? bairro;
  String? localidade;
  String? uf;
  String? ibge;
  String? gia;
  String? ddd;
  String? siafi;

  Cep(
      {this.cep,
      this.logradouro,
      this.complemento,
      this.bairro,
      this.localidade,
      this.uf,
      this.ibge,
      this.gia,
      this.ddd,
      this.siafi});

  Cep.fromJson(Map<String, dynamic> json)
      : this(
          cep: json['cep'],
          logradouro: json['logradouro'],
          complemento: json['complemento'],
          bairro: json['bairro'],
          localidade: json['localidade'],
          uf: json['uf'],
          ibge: json['ibge'],
          gia: json['gia'],
          ddd: json['ddd'],
          siafi: json['siafi'],
        );

  Map<String, dynamic> toJson() {
    return {
      'cep': cep,
      'logradouro': logradouro,
      'complemento': complemento,
      'bairro': bairro,
      'localidade': localidade,
      'uf': uf,
      'ibge': ibge,
      'gia': gia,
      'ddd': ddd,
      'siafi': siafi
    };
  }
}
