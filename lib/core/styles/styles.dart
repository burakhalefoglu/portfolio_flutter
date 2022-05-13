import 'package:flutter/material.dart';

class Styles {
  static Color defaultRedColor = const Color(0xffff698a);
  static Color defaultYellowColor = const Color(0xFFfedd69);
  static Color defaultBlueColor = const Color(0xff52beff);
  static Color defaultGreenColor = const Color(0xffa0ff52);
  static Color defaultGreyColor = const Color(0xffafafaf);
  static Color defaultBlackColor = const Color(0xff464646);

  static Color defaultLightGreyColor = const Color(0xffdedede);
  static Color defaultLightWhiteColor = const Color(0xffffffff);
  static Color defaultLightGreenColor = const Color(0xffe4fcd7);
  static Color defaultLightRedColor = const Color(0xfffcd7d7);
  static Color defaultLightBlueColor = const Color(0xffc4e6ff);

  static Color defaultDarkGreenColor = const Color(0xff137333);
  static Color defaultDarkRedColor = const Color(0xff73131e);

  static double defaultPadding = 18.0;
  static double defaultMargin = 8.0;
  static double defaultLeftPadding = 160.0;
  static double defaultRightPadding = 160.0;

  static BorderRadius defaultBorderRadius = BorderRadius.circular(10);

  static ShapeBorder shapeBorder = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
  );

  static ScrollbarThemeData scrollbarTheme =
      const ScrollbarThemeData().copyWith(
    thumbColor: MaterialStateProperty.all(defaultYellowColor),
    isAlwaysShown: false,
    interactive: true,
  );
}
