import 'dart:ui';

import 'package:flutter/material.dart';

enum BaseColors {
  white,
  transparent,
  black,
  grey
}

extension SelectedColorExtension on BaseColors {
  Color get getColor {
    switch (this) {
      case BaseColors.white:
        return Colors.white;
      case  BaseColors.transparent:
        return Colors.transparent;
      case  BaseColors.black:
        return Colors.black;
      case  BaseColors.grey:
        return Colors.grey;
      default:
        return const Color(0xff32bdea);
    }
  }
}
