import 'package:flutter/material.dart';
import 'package:tr_portfolio/core/extensions/extensions.dart';

class DesktopAuthPage extends StatelessWidget {
  final Widget cardWidget;
  const DesktopAuthPage({Key? key, required this.cardWidget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: context.highVerticalPadding,
        child: Row(
          children: [
            Expanded(flex: 35,child: context.emptyWidgetWidth),
            Expanded( flex: 30,
              child: cardWidget,
            ),
            Expanded(flex: 35,child: context.emptyWidgetWidth),
          ],
        ),
    );
  }
}
