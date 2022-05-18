import 'package:flutter/material.dart';
import 'package:tr_portfolio/core/extensions/extensions.dart';

import 'bases/home_widgets.dart';

class DashboardDesktop extends StatelessWidget {
  var homeWidgets = HomeWidgets();
  DashboardDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: context.highHorizontalPadding,
      children: [
        SizedBox(
          height: context.dynamicHeight(.4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 6,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          flex: 1,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(child: homeWidgets.buildScoreCard()),
                                Expanded(
                                    child:
                                        homeWidgets.buildTotalSellIncomeCard()),
                                Expanded(
                                    child:
                                        homeWidgets.buildMountlyAvarageCard()),
                              ])),
                      Expanded(
                          flex: 4, child: homeWidgets.buildPerformanceCard()),
                    ]),
              ),
              Expanded(
                flex: 4,
                child: homeWidgets.buildFutureValueCard(),
              ),
            ],
          ),
        ),
        SizedBox(
          height: context.dynamicHeight(.4),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: homeWidgets.buildInvesmentValueCard()),
                Expanded(child: homeWidgets.buildPortfolioAnalysisCard()),
              ]),
        ),
        SizedBox(
          height: context.dynamicHeight(.4),
          child: homeWidgets.buildComprasionCard(),
        ),
      ],
    );
  }
}
