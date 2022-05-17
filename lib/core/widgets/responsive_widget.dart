import 'package:flutter/material.dart';
import 'package:tr_portfolio/core/extensions/extensions.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget? mobile;
  final Widget desktop;
  final Widget? tablet;

  const ResponsiveWidget({
    Key? key,
    this.mobile,
    this.tablet,
    required this.desktop,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {

      if (constraints.maxWidth >= context.maxTabletPortraitWith) {
        return desktop;
      } else if (constraints.maxWidth >= context.maxMobilePortraitWith && constraints.maxWidth < context.maxTabletPortraitWith) {
          return tablet ?? desktop;
      } else {
        return mobile ?? desktop;
      }
    });
  }
}
