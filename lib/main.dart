import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:tr_portfolio/core/styles/styles.dart';
import 'app_route_module.dart';
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
    Modular.setInitialRoute('/login');
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
      colorScheme: buildColorScheme(),
      cardTheme: buildCardTheme(),
      bottomAppBarTheme: buildBottomAppBarTheme(),
      elevatedButtonTheme: buildElevatedButtonThemeData(),
      fontFamily: Styles.fontFamily,
      errorColor: Styles.dangerColorShocking,
      primaryColor: Styles.primaryColorPictonBlue,
      backgroundColor: Styles.lightColorGhost,
      cardColor: Styles.transparent,
      shadowColor: Styles.lightColorGhost,
      bottomAppBarColor: Styles.transparent,
    );
  }

  ElevatedButtonThemeData buildElevatedButtonThemeData() => ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        side: BorderSide(color: Styles.primaryColorPictonBlue),
    textStyle: TextStyle(
      color: Styles.whiteColor
    ))
  );

  BottomAppBarTheme buildBottomAppBarTheme() => BottomAppBarTheme(
    color: Styles.whiteColor,
    elevation: 1,
  );

  CardTheme buildCardTheme() => CardTheme(
        color: Styles.whiteColor.withOpacity(.95),
        elevation: 0.1,
        surfaceTintColor: Styles.lightColorGhost,
        shadowColor: Styles.darkColorBlueCharcoal,
      );

  ColorScheme buildColorScheme() {
    return ColorScheme(
      brightness: Brightness.light,
      shadow: Styles.lightColorGhost,
      background: Styles.darkTextColorTuna,
      onBackground: Styles.lightColorGhost,
      outline: Styles.lightColorGhost,
      surface: Styles.transparent,
      onSurface: Styles.darkBackgroundColorFrenchGray,
      onSecondary: Styles.secondaryTextColorGrenadier,
      secondary: Styles.secondaryColorCoral,
      secondaryContainer: Styles.secondaryBackgroundColorTuftBush,
      onSecondaryContainer: Styles.secondaryTextColorGrenadier,
      error: Styles.dangerColorShocking,
      onError: Styles.darkTextColorTuna,
      errorContainer: Styles.dangerBackgroundColorAmour,
      onErrorContainer: Styles.dangerTextColorRoyalHeath,
      primary: Styles.primaryColorPictonBlue,
      onPrimary: Styles.whiteColor,
      primaryContainer: Styles.primaryBackgroundColorCharlotte,
      onPrimaryContainer: Styles.primaryTextColorBlueChill,
      tertiary: Styles.warningTextColorTenn,
      onTertiary: Styles.secondaryTextColorGrenadier,
      tertiaryContainer: Styles.warningBackgroundColorPeachSchnapps,
      onTertiaryContainer: Styles.warningTextColorTenn,
    );
  }

  FloatingActionButtonThemeData buildFloatingActionButtonThemeData() {
    return FloatingActionButtonThemeData(
      backgroundColor: Styles.primaryColorPictonBlue,
    );
  }

  AppBarTheme buildAppBarTheme() {
    return AppBarTheme(
        centerTitle: true,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: buildIconThemeData(),
        actionsIconTheme: buildActionsIconThemeData());
  }

  IconThemeData buildActionsIconThemeData() {
    return IconThemeData(
      color: Styles.darkColorBlueCharcoal,
    );
  }

  IconThemeData buildIconThemeData() {
    return IconThemeData(
      color: Styles.darkColorBlueCharcoal,
    );
  }
}
