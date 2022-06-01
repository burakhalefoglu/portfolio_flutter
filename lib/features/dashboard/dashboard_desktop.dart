import 'package:flutter/material.dart';
import 'package:tr_portfolio/core/extensions/extensions.dart';
import 'bases/future_income_widget.dart';
import 'bases/performance_widget.dart';
import 'bases/portfolio_widget.dart';


class DashboardDesktop extends StatelessWidget {
  const DashboardDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: context.highHorizontalPadding,
      children: [
        SizedBox(
          height: context.percent70Screen,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
            Expanded(child:  FutureIncomeWidget()),
            Expanded(child: FutureIncomeWidget()),
            ])
        ),

        SizedBox(
          height: context.percent70Screen,
          child: const PerformanceWidget(),
            ),

        SizedBox(
          height: context.percent80Screen,
          child: const PortfolioWidget(),
            ),
      ],
    );
  }
}