
import 'package:flutter/material.dart';
import '../styles/custom_colors.dart';

 extension ContextExtension on BuildContext {
  double dynamicWidth(double val) => MediaQuery.of(this).size.width * val;
  double dynamicHeight(double val) => MediaQuery.of(this).size.height * val;

  ThemeData get theme => Theme.of(this);
}

extension ResponsiveExtension on BuildContext{
  bool get isMobile => MediaQuery.of(this).size.width < maxMobilePortraitWith;
  bool get isTablet => MediaQuery.of(this).size.width < maxTabletPortraitWith
      && MediaQuery.of(this).size.width >= maxMobilePortraitWith;
  bool get isDesktop => MediaQuery.of(this).size.width >= maxTabletPortraitWith;


}

extension NumberExtension on BuildContext {
  double get lowestValue => dynamicHeight(0.005);
  double get lowValue => dynamicHeight(0.02);
  double get mediumValue => dynamicHeight(0.03);
  double get highValue => dynamicHeight(0.05);

  double get floatingActionButtonSmall => dynamicHeight(0.09);
  double get floatingActionButtonBig => dynamicHeight(0.12);

  double get percent20Screen => dynamicHeight(0.20);
  double get percent40Screen => dynamicHeight(0.40);
  double get percent50Screen => dynamicHeight(0.50);
  double get percent60Screen => dynamicHeight(0.60);
  double get percent70Screen => dynamicHeight(0.70);
  double get percent80Screen => dynamicHeight(0.80);

  double get maxMobilePortraitWith => 650;
  double get maxTabletPortraitWith => 1200;
}

extension PaddingExtension on BuildContext {
  EdgeInsets get lowestPadding => EdgeInsets.all(lowestValue);
  EdgeInsets get lowPadding => EdgeInsets.all(lowValue);
  EdgeInsets get defaultPadding => EdgeInsets.all(mediumValue);
  EdgeInsets get highPadding => EdgeInsets.all(highValue);
  EdgeInsets get highestPadding => EdgeInsets.all(highValue);

  EdgeInsets get lowHorizontalPadding => EdgeInsets.symmetric(horizontal: lowValue);
  EdgeInsets get defaultHorizontalPadding => EdgeInsets.symmetric(horizontal: mediumValue);
  EdgeInsets get highHorizontalPadding => EdgeInsets.symmetric(horizontal: highValue);

  EdgeInsets get lowVerticalPadding => EdgeInsets.symmetric(vertical: lowValue);
  EdgeInsets get defaultVerticalPadding => EdgeInsets.symmetric(vertical: mediumValue);
  EdgeInsets get highVerticalPadding => EdgeInsets.symmetric(vertical: highValue);
}

extension MarginExtension on BuildContext {
  EdgeInsets get lowestMargin => EdgeInsets.all(lowestValue);
  EdgeInsets get lowMargin => EdgeInsets.all(lowValue);
  EdgeInsets get defaultMargin => EdgeInsets.all(mediumValue);
  EdgeInsets get highMargin => EdgeInsets.all(highValue);

  EdgeInsets get lowHorizontalMargin => EdgeInsets.symmetric(horizontal: lowValue);
  EdgeInsets get defaultHorizontalMargin => EdgeInsets.symmetric(horizontal: mediumValue);
  EdgeInsets get highHorizontalMargin => EdgeInsets.symmetric(horizontal: highValue);

  EdgeInsets get lowVerticalMargin => EdgeInsets.symmetric(vertical: lowValue);
  EdgeInsets get defaultVerticalMargin => EdgeInsets.symmetric(vertical: mediumValue);
  EdgeInsets get highVerticalMargin => EdgeInsets.symmetric(vertical: highValue);
}

extension BorderExtension on BuildContext {
  BorderRadius get defaultBorderRadius => BorderRadius.circular(lowValue);
  BorderRadius get lowestBorderRadius => BorderRadius.circular(lowestValue);
  ShapeBorder get shapeBorder => RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(lowValue),
    side: BorderSide(
      color: CustomColors.dark.getColor.withOpacity(.1),
      width: 1,
    ),
  );
}

extension EmptyWidget on BuildContext {
  Widget get emptyWidgetHeight => SizedBox(
    height: lowValue,
  );
  Widget get emptyWidgetWidth => SizedBox(
    width: lowValue,
  );

  Widget get emptyWidget => const SizedBox(
    width: 0,
    height: 0,
  );

 }
