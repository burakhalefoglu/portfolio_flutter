import 'dart:async';

import '../../../core/models/response.dart';
import 'forget_pass_data.dart';

class ForgetPassBloc{
  final loginOrRegisterStreamController = StreamController.broadcast();

  Stream get getStream => loginOrRegisterStreamController.stream;


  Future<ResponseModel> sendResetPassword(String email) async{
    final result = await ForgetPassData.sendResetPassword(email);
    return result;
  }
}

final forgetPassBloc = ForgetPassBloc();