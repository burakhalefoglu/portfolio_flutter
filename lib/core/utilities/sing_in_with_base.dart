
import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:fluttertoast/fluttertoast.dart';

Future<void> singInWithBase(BuildContext context,
    Function singInMethod) async{
  final response = await singInMethod();
  if (response.success) {
    Fluttertoast.showToast(
        msg:
        'Giriş yapıldı. Anasayfaya yönlendiriliyor...',
        timeInSecForIosWeb: 5);
    Future(() {
      Modular.to.navigate('/grafik');
    });
    return;
  }
  Fluttertoast.showToast(
      msg: response.message, timeInSecForIosWeb: 5);

}