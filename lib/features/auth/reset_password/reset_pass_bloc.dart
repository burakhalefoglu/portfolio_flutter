import 'dart:async';

import '../../../core/models/response.dart';
import 'reset_pass_data.dart';

class ResetPassBloc{
  final loginOrRegisterStreamController = StreamController.broadcast();

  Stream get getStream => loginOrRegisterStreamController.stream;


  Future<ResponseModel> sendResetPassword(String email) async{
    final result = await ResetPassData.sendResetPassword(email);
    return result;
  }
}

final resetPassBloc = ResetPassBloc();