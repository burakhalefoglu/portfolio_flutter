
import 'package:fluttertoast/fluttertoast.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

Future<bool> isAuthValid(Future<String?> token) async{
  try{
    final tokenResult = await token;
    bool hasExpired = JwtDecoder.isExpired(tokenResult!);
    if(!hasExpired){
      return Future.value(true);
    }
    return Future.value(false);
  }
  on Exception catch(e) {
    print(e);
    Fluttertoast.showToast(
        msg:
        'Bu sayfayı ziyaret edebilmek için giriş yapmalısınız.',
        timeInSecForIosWeb: 5);
    return Future.value(false);
  }
}

Future<bool> isAuthUnValid(Future<String?> token) async{
  try{
    final tokenResult = await token;
    bool hasExpired = JwtDecoder.isExpired(tokenResult!);
    if(!hasExpired){
      return Future.value(false);
    }
    return Future.value(true);
  }
  on Exception catch(e) {
    print(e);
    Fluttertoast.showToast(
        msg:
        'Bu sayfayı ziyaret edebilmek için giriş yapmalısınız.',
        timeInSecForIosWeb: 5);
    return Future.value(true);
  }
}