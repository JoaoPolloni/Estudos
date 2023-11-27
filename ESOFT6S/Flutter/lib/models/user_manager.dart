import 'package:projeto/models/user.dart';

class UserManager {
  static final UserManager instancia = UserManager.salvamentoInterno();
  List<User> userList = [];

  factory UserManager() {
    return instancia;
  }

  UserManager.salvamentoInterno();
}
