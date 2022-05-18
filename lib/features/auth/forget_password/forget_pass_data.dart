import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../../../core/models/response.dart';
import 'forget_pass_model.dart';

class ForgetPassData {

  ForgetPassData.internal();

  static final ForgetPassData _singleton =
  ForgetPassData.internal();

  factory ForgetPassData() {
    return _singleton;
  }

  static Future<ResponseModel> sendResetPassword(String email) async {
    try {
    final loginOrRegisterModel =
    ForgetPassModel.withData(email);
    String url = dotenv.get('API_URL_DEV');
    const endpoint= "Auth/ResetPassword";
    var dio = Dio();
    Response rs;
    rs = await dio.post(
      url + endpoint,
      data: loginOrRegisterModel.toJson(),
      options: Options(responseType: ResponseType.json),
    );
      final data = rs.data['data'];
    if(rs.data['success']){
        return ResponseModel.withData(true, "");
    }
    return ResponseModel.withData(false, rs.data['message']);
    }
    on Exception catch (e) {
      return ResponseModel.withData(false, "Bir Hata Oluştu");
    }
  }
}
