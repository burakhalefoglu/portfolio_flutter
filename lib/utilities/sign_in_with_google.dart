import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:tr_portfolio/blocs/login_or_register_bloc.dart';

Future<void> signInWithGoogle() async {

  try{
      GoogleSignInAccount? googleUser;

    if (kIsWeb) {
      print("web");
      googleUser = await GoogleSignIn(clientId:
      "477683893012-rsvq18k4lfgso9furscuslusgkm2s794.apps.googleusercontent.com").signIn();
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        print("android");
        googleUser = await GoogleSignIn(clientId:
        "477683893012-bo7at16qqhqpasi6a34atiueprscmer1.apps.googleusercontent.com").signIn();
        break;
      case TargetPlatform.iOS:
        print("iOS");
        googleUser = await GoogleSignIn(clientId:
        "477683893012-avjtqce0bjbc955gtcdfjap1l7373ol8.apps.googleusercontent.com").signIn();
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
    final email = userCredentials.user?.email;
    final name = userCredentials.user?.displayName;
    await loginOrRegisterBloc.loginOrRegister(uuid, email, name, "");
  }
  on Exception catch (e) {
      print(e);
  }

}
