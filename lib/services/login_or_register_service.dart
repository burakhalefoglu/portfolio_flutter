import 'package:flutter_dotenv/flutter_dotenv.dart';
import '../models/response_models.dart';

class LoginOrRegisterService {

  static String _token = "";

  LoginOrRegisterService.internal();

  static final LoginOrRegisterService _singleton =
      LoginOrRegisterService.internal();

  factory LoginOrRegisterService() {
    return _singleton;
  }

  static Future<void> loginOrRegister(String? uuid,
      String? email,
      String? name,
      String? password) async {

    String url = dotenv.get('API_URL_DEV');

    Future.delayed(
      const Duration(seconds: 1),
      () {
        final data = DataResponseModel.withData("token", "message", true);
        if(data.success){
          _token = "Fake Token from: " + url + data.data;

        }
        _token = "no_token";
      },
    );
  }

  static String getToken(){
    return _token;
  }
}
