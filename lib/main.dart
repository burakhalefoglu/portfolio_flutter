import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:tr_portfolio/screens/dashboard_screen.dart';
import 'package:tr_portfolio/screens/login_or_register_screen.dart';
import 'package:tr_portfolio/screens/profile_screen.dart';
import 'utilities/firebase_options.dart';

Future<void> main() async {
  await dotenv.load(fileName: ".env");
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,

  );
  runApp(MaterialApp(
            routes: {
              "/": (BuildContext context) => const LoginOrRegisterScreen(),
              "/login": (BuildContext context) => const LoginOrRegisterScreen(),
              "/dashboard": (BuildContext context) => DashboardScreen(),
              "/profile": (BuildContext context) => ProfileScreen()
            },
            initialRoute: "/",
          )
  );
}
