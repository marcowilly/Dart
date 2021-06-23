class Usuario {
  String? nome, email;
  int? idade;

  //? Construtor default da classe
  Usuario({this.nome, this.email, this.idade});

  //? Construtor nomeado para criar uma nova instancia a partir de um Map<>
  /*
  Usuario.fromJson(Map<String, dynamic> json) {
    this.nome = json['nome'];
    this.email = json['email'];
    this.idade = json['idade'];
  }
  */

  //? Construtor Factory retorna uma noca instancia do construtor default da classe a apartir de um Map<>
  /*
  factory Usuario.fromJson(Map<String, dynamic> json) {
    return Usuario(
      nome: json['nome'],
      email: json['email'],
      idade: json['idade'],
    );
  }
  */

  //? Construtor com lista de inicalizacao, define parametros antes de executar o escopo do construtor
  /*
  Usuario.fromJson(Map<String, dynamic> json)
      : nome = json['nome'],
        email = json['email'],
        idade = json['idade'] {
    // Configuracoes iniciais
  }
  */

  //? Construtor com lista de inicalizacao, usa this para passar os parametros para o construtor default
  Usuario.fromJson(Map<String, dynamic> json)
      : this(
          nome: json['nome'],
          email: json['email'],
          idade: json['idade'],
        );

  Map<String, dynamic> toJson() {
    return {
      'nome': nome,
      'email': email,
      'idade': idade,
    };
  }
}
