import 'package:flutter/material.dart';

import '../../../../core/styles/styles.dart';

class BestWinnerWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  final double value;
  final bool isUp;
  final double percent;

  const BestWinnerWidget({Key? key,
    required this.title,
    required this.subTitle,
    required this.value,
    required this.isUp,
    required this.percent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        focusColor: Styles.defaultLightGreyColor,
        hoverColor: Styles.defaultLightGreyColor,
        borderRadius: Styles.defaultBorderRadius,
        child: Container(
          width: 210,
          height: 72,
          margin: EdgeInsets.all(Styles.defaultMargin),
          padding: EdgeInsets.all(Styles.defaultPadding),
          decoration: BoxDecoration(
              border: Border.all(color: Styles.defaultGreyColor, width: .3),
              borderRadius: Styles.defaultBorderRadius,
              color: Styles.defaultLightWhiteColor),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 48,
                width: 36,
                decoration: BoxDecoration(
                  color: isUp? Styles.defaultLightGreenColor: Styles.defaultLightRedColor,
                  borderRadius: Styles.defaultBorderRadius,
                ),
                child: Icon(
                  isUp? Icons.arrow_upward: Icons.arrow_downward,
                  color:isUp? Styles.defaultDarkGreenColor: Styles.defaultDarkRedColor,
                  size: 12,
                ),
              ),
              const SizedBox(width: 12),
              Column(
                children: <Widget>[
                  Text(title,
                      style:
                          const TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                  SizedBox(height: 4),
                  Text(subTitle,
                      style: const TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 12)),
                ],
              ),
              const SizedBox(width: 12),
              Column(
                children: <Widget>[
                  Text("₺ " + value.toString(),
                      style:
                          const TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                  SizedBox(height: 4),
                  Text("% " + percent.toString(),
                      style: const TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 12)),
                ],
              ),

            ],
          )),
        onTap: () {
          print("tapped on container");
        },
      ),
    );
  }
}
