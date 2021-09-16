import 'package:facebook_ui/models/user_model.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'user_bloc_states.dart';

class UserBloc extends Cubit<UsersStates> {
  UserBloc() : super(InitialState());

  UserModel getMohamed() {
    emit(MohamedUserState());
    return UserModel.Mohamed();
  }

  UserModel getWalaa() {
    emit(WalaaUserState());
    return UserModel.Walaa();
  }

  UserModel getMessi() {
    emit(MessiUserState());
    return UserModel.Messi();
  }

  UserModel getPsg() {
    emit(PsgUserState());
    return UserModel.Psg();
  }

  UserModel getHappyMan() {
    emit(HappyManUserState());
    Future.delayed(Duration(minutes: 1)).then((value) => UserModel.HappMan());
    return UserModel.HappMan();
  }

  UserModel getNoUser() {
    emit(NoUserState());
    return UserModel.NoUser();
  }
}
