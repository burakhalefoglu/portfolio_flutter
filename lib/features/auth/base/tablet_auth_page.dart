import 'package:flutter/material.dart';
import 'package:tr_portfolio/core/extensions/extensions.dart';

class TabletAuthPage extends StatelessWidget {
  final Widget cardWidget;
  const TabletAuthPage({Key? key, required this.cardWidget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: context.highVerticalPadding,
        child: Row(
          children: [
            Expanded(flex: 20,child: context.emptyWidgetWidth),
            Expanded( flex: 60,
              child: cardWidget,
            ),
            Expanded(flex: 20,child: context.emptyWidgetWidth),
          ],
        ),
    );
  }
}
