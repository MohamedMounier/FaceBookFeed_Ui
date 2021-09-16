import 'package:facebook_ui/models/user_model.dart';

abstract class UsersStates {}

class InitialState extends UsersStates {}

class MohamedUserState extends UsersStates {
  UserModel user1cubit = UserModel.Mohamed();
}

class WalaaUserState extends UsersStates {
  UserModel user1cubit = UserModel.Walaa();
}

class MessiUserState extends UsersStates {
  UserModel user1cubit = UserModel.Messi();
}

class PsgUserState extends UsersStates {
  UserModel user1cubit = UserModel.Psg();
}

class HappyManUserState extends UsersStates {
  UserModel user1cubit = UserModel.HappMan();
}

class NoUserState extends UsersStates {
  UserModel user1cubit = UserModel.NoUser();
}
