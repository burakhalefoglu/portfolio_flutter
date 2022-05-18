import 'package:flutter/material.dart';
import 'package:tr_portfolio/core/extensions/extensions.dart';

class MobileAuthPage extends StatelessWidget {
  final Widget cardWidget;
  const MobileAuthPage({Key? key, required this.cardWidget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: context.highVerticalPadding,
        child: Row(
          children: [
            Expanded(flex: 5,child: context.emptyWidgetWidth),
            Expanded( flex: 80,
              child: cardWidget,
            ),
            Expanded(flex: 5,child: context.emptyWidgetWidth),
          ],
        ),
    );
  }
}
