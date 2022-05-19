

import 'package:flutter/material.dart';
import 'package:tr_portfolio/core/extensions/extensions.dart';
import 'package:tr_portfolio/core/styles/custom_colors.dart';
import '../../../widgets/custom_cards.dart';

class MontlyAvarageWidget extends StatelessWidget{
  const MontlyAvarageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomCardWidget(child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Spacer(flex: 1),
        Expanded(flex: 6, child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FittedBox(child: Text("Aylık Ortalama Kazanç", style: context.theme.textTheme.titleLarge)),
            FittedBox(child: Text("2.000₺", style: context.theme.textTheme.titleLarge?.copyWith(color: CustomColors.pictonBlue.getColor),)),
          ],
        )),
        const Spacer(flex: 2),
        Expanded(flex: 6, child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FittedBox(child: Text("Aylık Ortalama Yatırım", style: context.theme.textTheme.titleLarge)),
            FittedBox(child: Text("2.000₺", style: context.theme.textTheme.titleLarge?.copyWith(color: CustomColors.electricViolet.getColor),)),
          ],
        )),
        const Spacer(flex: 1),
      ],
    ),
    );
  }


}