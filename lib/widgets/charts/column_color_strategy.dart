
import 'dart:math';

import 'package:flutter/cupertino.dart';

import '../../core/styles/custom_colors.dart';
import 'chart_models.dart';

enum ColumnColorStrategy {
  random,
  defaults,
  negativeSensitive,
}

extension SelectedColorExtension on ColumnColorStrategy {

  Color? getColor(Color? defaultColor, double data) {
    switch (this) {
      case ColumnColorStrategy.random:
        return CustomColors.values[Random().nextInt(CustomColors.values.length)].getColor;
      case ColumnColorStrategy.defaults:
        return defaultColor;
      case ColumnColorStrategy.negativeSensitive:
        return data > 0? CustomColors.success.getColor: CustomColors.danger.getColor;
      default:
        return defaultColor;
    }
  }
}