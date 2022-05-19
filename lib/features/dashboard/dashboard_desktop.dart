import 'package:flutter/material.dart';
import 'package:tr_portfolio/core/extensions/extensions.dart';
import 'bases/future_income_widget.dart';
import 'bases/home_widgets.dart';
import 'bases/monthly_avarage_widget.dart';
import 'bases/performance_analysis_widget.dart';
import 'bases/total_sell_income_widget.dart';


class DashboardDesktop extends StatelessWidget {
  var homeWidgets = HomeWidgets();
  DashboardDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: context.highHorizontalPadding,
      children: [
        SizedBox(
          height: context.percent40Screen,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 3,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          flex: 2,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Expanded(child: TotalSellIncomeWidget()),
                                Expanded(child: MontlyAvarageWidget()),
                              ])),
                      const Expanded(
                        flex: 6,
                        child: FutureIncomeWidget(),
                      ),
                    ]),
              ),
              const Expanded(
                flex: 5,
                child: PerformanceAnalysisWidget(),
              ),
            ],
          ),
        ),
        SizedBox(
          height: context.halfOfScreen,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(flex: 4, child: homeWidgets.buildInvesmentValueCard()),
                Expanded(flex: 6, child: homeWidgets.buildPortfolioAnalysisCard()),
              ]),
        ),
        SizedBox(
          height: context.percent40Screen,
          child: homeWidgets.buildComprasionCard(),
        ),
      ],
    );
  }
}
