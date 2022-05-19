import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:tr_portfolio/core/styles/custom_colors.dart';
import 'app_route_module.dart';
import 'core/styles/base_colors.dart';
import 'firebase_options.dart';
import 'package:flutter_modular/flutter_modular.dart';

Future<void> main() async {
  await dotenv.load(fileName: ".env");
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  return runApp(ModularApp(module: AppRouteModule(), child: const AppWidget()));
}

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Modular.setInitialRoute('/');
    return MaterialApp.router(
      title: 'Portfolio',
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
      theme: buildThemeData(),
    );
  }

  ThemeData buildThemeData() {
    return ThemeData(
      appBarTheme: buildAppBarTheme(),
      floatingActionButtonTheme: buildFloatingActionButtonThemeData(),
      cardTheme: buildCardTheme(),
      bottomAppBarTheme: buildBottomAppBarTheme(),
      elevatedButtonTheme: buildElevatedButtonThemeData(),
      popupMenuTheme: buildPopupMenuThemeData(),
      iconTheme: buildIconThemeData(),
      bottomNavigationBarTheme: buildBottomNavigationBarThemeData(),
      // fontFamily: Styles.fontFamily,
      errorColor: CustomColors.alizarinCrimson.getColor,
      primaryColor: CustomColors.pictonBlue.getColor,
      backgroundColor: BaseColors.transparent.getColor,
      cardColor: BaseColors.transparent.getColor,
      shadowColor: BaseColors.grey.getColor,
      bottomAppBarColor: BaseColors.transparent.getColor,
    );
  }

  BottomNavigationBarThemeData buildBottomNavigationBarThemeData() => BottomNavigationBarThemeData(
    selectedIconTheme: IconThemeData(color: BaseColors.black.getColor),
    unselectedIconTheme: IconThemeData(color: BaseColors.grey.getColor),
  );

  PopupMenuThemeData buildPopupMenuThemeData() => PopupMenuThemeData(
    color: BaseColors.white.getColor,
  );

  ElevatedButtonThemeData buildElevatedButtonThemeData() => ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        side: BorderSide(color: CustomColors.pictonBlue.getColor),
    textStyle: TextStyle(
      color: BaseColors.white.getColor
    ))
  );

  BottomAppBarTheme buildBottomAppBarTheme() => BottomAppBarTheme(
    color: BaseColors.white.getColor,
    elevation: 1,
  );

  CardTheme buildCardTheme() => CardTheme(
        color: BaseColors.white.getColor.withOpacity(.95),
        elevation: 0.1,
        surfaceTintColor: BaseColors.grey.getColor,
    shadowColor: BaseColors.black.getColor,
      );


  FloatingActionButtonThemeData buildFloatingActionButtonThemeData() {
    return FloatingActionButtonThemeData(
      backgroundColor: CustomColors.pictonBlue.getColor,
    );
  }

  AppBarTheme buildAppBarTheme() {
    return AppBarTheme(
        centerTitle: false,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: buildIconThemeData(),
        actionsIconTheme: buildActionsIconThemeData());
  }

  IconThemeData buildActionsIconThemeData() {
    return IconThemeData(
      color: BaseColors.grey.getColor,
    );
  }

  IconThemeData buildIconThemeData() {
    return IconThemeData(
      color: BaseColors.grey.getColor,
    );
  }
}
