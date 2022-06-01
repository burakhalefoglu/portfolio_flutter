import 'dart:ui';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'app_route_module.dart';
import 'core/services/device_info_service.dart';
import 'core/styles/custom_colors.dart';
import 'firebase_options.dart';
import 'package:flutter_modular/flutter_modular.dart';

Future<void> main() async {
  await dotenv.load(fileName: ".env");
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await DeviceInfoService.addOrUpdateDeviceInfo(); // TODO: Send backend after login

  runApp(ModularApp(module: AppRouteModule(), child: const AppWidget()));
}

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Modular.setInitialRoute('/');
    return MaterialApp.router(
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.stylus,
          PointerDeviceKind.unknown},
      ),
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
      theme: buildThemeData(),
    );
  }

  ThemeData buildThemeData() {
    return ThemeData(
      appBarTheme: buildAppBarTheme(),
      cardTheme: buildCardTheme(),
      bottomAppBarTheme: buildBottomAppBarTheme(),
      colorSchemeSeed: CustomColors.primary.getColor,
      brightness: Brightness.light,
      scaffoldBackgroundColor:  CustomColors.light.getColor,
      floatingActionButtonTheme: buildFloatingActionButtonThemeData(),
      elevatedButtonTheme: buildElevatedButtonThemeData(),
        listTileTheme: buildListTileThemeData()
    );
  }

  ListTileThemeData buildListTileThemeData() => ListTileThemeData(

  );

  ElevatedButtonThemeData buildElevatedButtonThemeData()
  => ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary:  CustomColors.primary.getColor.withOpacity(.9),
    )
  );

  FloatingActionButtonThemeData buildFloatingActionButtonThemeData()
  => FloatingActionButtonThemeData(
    backgroundColor: CustomColors.primary.getColor
  );


  BottomAppBarTheme buildBottomAppBarTheme() => BottomAppBarTheme(
    color: CustomColors.white.getColor,
    elevation: 1,
  );

  CardTheme buildCardTheme() => CardTheme(
        color: CustomColors.white.getColor.withOpacity(.95),
        elevation: 0.1,
        shadowColor: CustomColors.dark.getColor.withOpacity(.1),
        surfaceTintColor: CustomColors.dark.getColor.withOpacity(.1)
      );

  AppBarTheme buildAppBarTheme() {
    return AppBarTheme(
        centerTitle: false,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        backgroundColor: CustomColors.white.getColor,
        elevation: 1,
        shadowColor: CustomColors.light.getColor,
        iconTheme: buildIconThemeData(),
        actionsIconTheme: buildActionsIconThemeData());
  }

  IconThemeData buildActionsIconThemeData() {
    return IconThemeData(
      color: CustomColors.dark.getColor,
    );
  }

  IconThemeData buildIconThemeData() {
    return IconThemeData(
      color: CustomColors.dark.getColor,
    );
  }
}
