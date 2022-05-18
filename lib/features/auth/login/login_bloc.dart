import 'dart:async';

import '../../../core/models/response.dart';
import 'login_data.dart';

class LoginBloc{
  final loginOrRegisterStreamController = StreamController.broadcast();

  Stream get getStream => loginOrRegisterStreamController.stream;


  Future<ResponseModel> loginOrRegister(String uuid,
      String? email,
      String? name,
      String? password) async{
    final result = await LoginData.loginOrRegister(uuid,
        email,
        name,
        password);
    loginOrRegisterStreamController.sink.add(LoginData.getToken());
    return result;
  }

  Future<String?> getToken() async{
    return await LoginData.getToken();
  }
}

final loginBloc = LoginBloc();