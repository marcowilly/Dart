import 'Usuario.dart';

class ListaUsuarios {
  List<Usuario> usuarios;

  //? Construtor default da classe
  ListaUsuarios(this.usuarios);

  //? Construtor com lista de inicalizacao, usa this para passar os parametros para o construtor default
  ListaUsuarios.fromJson(List<dynamic> json)
      : this(json.map((e) => Usuario.fromJson(e)).toList());

  List<dynamic> toJson() {
    return usuarios;
  }
}
