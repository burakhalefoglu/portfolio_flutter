import 'package:flutter/material.dart';
import 'package:tr_portfolio/core/extensions/extensions.dart';
import '../core/styles/custom_colors.dart';
import 'custom_info_tooltip.dart';

class ChartCustomCardWidget extends StatelessWidget {
  final String title;
  final Widget child;
  final String infoText;

  const ChartCustomCardWidget(
      {Key? key, required this.title, required this.child, required this.infoText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const Spacer(
            flex: 5,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Spacer(
                flex: 5,
              ),
              Expanded(flex: 75, child: buildTitle(context)),
              Expanded(
                flex: 5,
                child: buildInfo(context, infoText), 
              ),
              const Spacer(),
            ],
          ),
          const Spacer(
            flex: 5,
          ),
          Expanded(
            child: buildDivider(),
          ),
          const Spacer(
            flex: 5,
          ),
          Expanded(flex: 85, child: child),
        ],
      ),
      margin: context.lowMargin,
      shape: context.shapeBorder,
    );
  }

  Text buildTitle(BuildContext context) {
    return Text(title,
        style: context.theme.textTheme.headline6
            ?.copyWith(fontWeight: FontWeight.bold));
  }

  Divider buildDivider() {
    return Divider(
      color: CustomColors.gray.getColor.withOpacity(.3),
    );
  }
}
