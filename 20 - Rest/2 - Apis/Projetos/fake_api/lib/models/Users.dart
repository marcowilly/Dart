import 'User.dart';

class Users {
  List<User>? users;

  Users({this.users});

  factory Users.fromJson(List<dynamic> json) {
    return Users(users: json.map((i) => User.fromJson(i)).toList());
  }

  List<dynamic> toJson() {
    return users!.map((e) => e.toJson()).toList();
  }
}
