import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:tr_portfolio/core/models/storage_item.dart';

import '../../../core/models/response.dart';
import '../../../core/services/secure_local_storage_service.dart';
import 'login_model.dart';

class LoginData {

  LoginData.internal();

  static final LoginData _singleton =
  LoginData.internal();

  factory LoginData() {
    return _singleton;
  }

  static Future<ResponseModel> loginOrRegister(String uuid,
      String? email,
      String? name,
      String? password) async {
    try {
    final loginOrRegisterModel =
    LoginModel.withData(uuid, email!, name!, password!);
    String url = dotenv.get('API_URL_DEV');
    const endpoint= "Auth/LoginOrRegister";
    var dio = Dio();
    Response rs;
    rs = await dio.post(
      url + endpoint,
      data: loginOrRegisterModel.toJson(),
      options: Options(responseType: ResponseType.json),
    );
      final data = rs.data['data'];
    if(rs.data['success']){
      SecureLocalStorageService
          .writeSecureData(StorageItem.withData('token', data['token']));
        return ResponseModel.withData(true, "");
    }
    return ResponseModel.withData(false, rs.data['message']);
    }
    on Exception catch (e) {
      return ResponseModel.withData(false, "Bir Hata Oluştu");
    }
  }

  static Future<String?> getToken() async{
    final token = await SecureLocalStorageService.readSecureData('token');
    return token;
  }
}
