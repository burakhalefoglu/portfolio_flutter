import 'dart:async';

import 'package:tr_portfolio/services/login_or_register_service.dart';

class LoginOrRegisterBloc{
  final loginOrRegisterStreamController = StreamController.broadcast();

  Stream get getLoginOrRegisterStream => loginOrRegisterStreamController.stream;


  Future<void> loginOrRegister(String? uuid,
      String? email,
      String? name,
      String? password) async{
    await LoginOrRegisterService.loginOrRegister(uuid,
        email,
        name,
        password);

    loginOrRegisterStreamController.sink.add(LoginOrRegisterService.getToken());
  }

  String getToken(){
    return LoginOrRegisterService.getToken();
  }
}

final loginOrRegisterBloc = LoginOrRegisterBloc();