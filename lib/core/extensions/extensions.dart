
import 'package:flutter/material.dart';

 extension ContextExtension on BuildContext {
  double dynamicWidth(double val) => MediaQuery.of(this).size.width * val;
  double dynamicHeight(double val) => MediaQuery.of(this).size.height * val;

  ThemeData get theme => Theme.of(this);
}

extension ResponsiveExtension on BuildContext{
  bool get isMobile => MediaQuery.of(this).size.width < maxMobilePortraitSize;
  bool get isTablet => MediaQuery.of(this).size.width < maxTabletPortraitSize
      && MediaQuery.of(this).size.width >= maxMobilePortraitSize;
  bool get isDesktop => MediaQuery.of(this).size.width >= maxTabletPortraitSize;
}

extension NumberExtension on BuildContext {
  double get lowValue => dynamicHeight(0.01);
  double get mediumValue => dynamicHeight(0.03);
  double get heightValue => dynamicHeight(0.07);
  double get maxMobilePortraitSize => 599;
  double get maxTabletPortraitSize => 840;
}

extension PaddingExtension on BuildContext {
  EdgeInsets get defaultPadding => EdgeInsets.all(mediumValue);
}

extension MarginExtension on BuildContext {
  EdgeInsets get defaultMargin => EdgeInsets.all(heightValue);
}

extension BorderExtension on BuildContext {
  BorderRadius get defaultBorderRadius => BorderRadius.circular(lowValue);
  ShapeBorder get shapeBorder => RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(lowValue),
  );
}

extension EmptyWidget on BuildContext {
  Widget get emptyWidgetHeight => SizedBox(
    height: lowValue,
  );
  Widget get emptyWidgetWidth => SizedBox(
    width: lowValue,
  );
}
