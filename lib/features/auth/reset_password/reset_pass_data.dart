import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../../../core/models/response.dart';
import 'reset_pass_model.dart';

class ResetPassData {

  ResetPassData.internal();

  static final ResetPassData _singleton =
  ResetPassData.internal();

  factory ResetPassData() {
    return _singleton;
  }

  static Future<ResponseModel> sendResetPassword(String email) async {
    try {
    final loginOrRegisterModel =
    ResetPassModel.withData(email);
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
