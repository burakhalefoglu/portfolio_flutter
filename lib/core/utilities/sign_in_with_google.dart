import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:tr_portfolio/features/auth/auth_bloc.dart';

import '../models/response.dart';

Future<ResponseModel> signInWithGoogle() async {
  try{
      GoogleSignInAccount? googleUser;

    if (kIsWeb) {
      googleUser = await GoogleSignIn(clientId:
      "477683893012-rsvq18k4lfgso9furscuslusgkm2s794.apps.googleusercontent.com").signIn();
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        googleUser = await GoogleSignIn(clientId:
        "477683893012-bo7at16qqhqpasi6a34atiueprscmer1.apps.googleusercontent.com").signIn();
        break;
      case TargetPlatform.iOS:
        googleUser = await GoogleSignIn(clientId:
        "477683893012-avjtqce0bjbc955gtcdfjap1l7373ol8.apps.googleusercontent.com").signIn();
        break;
      case TargetPlatform.fuchsia:
        break;
      case TargetPlatform.linux:
        break;
      case TargetPlatform.macOS:
        break;
      case TargetPlatform.windows:
        break;
    }

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    final userCredentials =
    await FirebaseAuth.instance.signInWithCredential(credential);
    final uuid = userCredentials.user?.uid;
    if(uuid == null){
      throw Exception("uuid cant be null");
    }

    final email = userCredentials.user?.email;
    final name = userCredentials.user?.displayName;
    final profilePicture = userCredentials.user?.photoURL; // TODO:
    final result = await authBloc
        .loginOrRegister(uuid.toString(), email, name, "");
    return result;
  }
  on Exception catch (e) {
      print(e);
      return ResponseModel.withData(false, "Bir Hata Oluştu");
  }
}
