import 'dart:async';

import 'package:tr_portfolio/features/auth/auth_data.dart';

import '../../core/models/response.dart';

class AuthBloc{
  final loginOrRegisterStreamController = StreamController.broadcast();

  Stream get getStream => loginOrRegisterStreamController.stream;


  Future<ResponseModel> loginOrRegister(String uuid,
      String? email,
      String? name,
      String? password) async{
    final result = await AuthData.loginOrRegister(uuid,
        email,
        name,
        password);
    loginOrRegisterStreamController.sink.add(AuthData.getToken());
    return result;
  }

  Future<String?> getToken() async{
    return await AuthData.getToken();
  }
}

final authBloc = AuthBloc();