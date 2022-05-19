

import 'package:flutter/cupertino.dart';
import 'package:tr_portfolio/core/extensions/extensions.dart';
import '../../../core/styles/custom_colors.dart';
import '../../../widgets/custom_cards.dart';

class TotalSellIncomeWidget extends StatelessWidget{
  const TotalSellIncomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomCardWidget(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(flex: 2),
            Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Spacer(),
                    const Expanded(
                      flex: 4,
                      child: FittedBox(child: Text("Toplam Satışlar")),
                    ),
                    const Spacer(),
                    Expanded(
                      flex: 4,
                      child: FittedBox(
                        child: Text("120.000₺",
                            style: context.theme.textTheme.titleLarge),
                      ),
                    ),
                    const Spacer(),
                  ],
                )),
            const Spacer(flex: 2),
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Spacer(
                    flex: 1,
                  ),
                  Expanded(
                    flex: 6,
                    child: FittedBox(
                      child: Text(
                        "Brüt: 20.000₺  %+20",
                        style: context.theme.textTheme.bodySmall
                            ?.copyWith(color: CustomColors.oliveDrab.getColor),
                      ),
                    ),
                  ),
                  const Spacer(flex: 1),
                  Expanded(
                    flex: 6,
                    child: FittedBox(
                      child: Text(
                        "Net: 30.000₺  %-30",
                        style: context.theme.textTheme.bodySmall
                            ?.copyWith(color: CustomColors.cerise.getColor),
                      ),
                    ),
                  ),
                  const Spacer(flex: 1)
                ],
              ),
            ),
            const Spacer(flex: 1),
          ],
        ),
    );
  }


}