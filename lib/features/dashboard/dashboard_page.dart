import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tr_portfolio/features/dashboard/responsive.dart';
import 'package:tr_portfolio/features/dashboard/sections/expense_income_chart.dart';
import 'package:tr_portfolio/features/dashboard/sections/latest_transactions.dart';
import 'package:tr_portfolio/features/dashboard/sections/statics_by_category.dart';
import 'package:tr_portfolio/features/dashboard/sections/upgrade_pro_section.dart';
import 'package:tr_portfolio/features/dashboard/sections/your_cards_section.dart';

import '../../core/styles/styles.dart';
import 'layout/app_layout.dart';
import 'models/card_details.dart';
import 'models/enums/card_type.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Styles.scaffoldBackgroundColor,
          scrollbarTheme: Styles.scrollbarTheme,
        ),
        home: const DashboardHomePage(),
      );
    });
  }
}


class DashboardHomePage extends StatefulWidget {
  const DashboardHomePage({Key? key}) : super(key: key);

  @override
  State<DashboardHomePage> createState() => _HomePageState();
}

class _HomePageState extends State<DashboardHomePage> {
  int activeTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: AppLayout(
          content: Row(
            children: [
              // Main Panel
              Expanded(
                child: Column(
                  children: [
                    const Expanded(
                      flex: 2,
                      child: ExpenseIncomeCharts(),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: Styles.defaultPadding,
                        ),
                        child: const UpgradeProSection(),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: LatestTransactions(),
                    ),
                  ],
                ),
                flex: 5,
              ),
              // Right Panel
              Visibility(
                visible: Responsive.isDesktop(context),
                child: Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: Styles.defaultPadding),
                    child: Column(
                      children: [
                        CardsSection(
                          cardDetails: [
                            CardDetails("431421432", CardType.mastercard),
                            CardDetails("423142231", CardType.mastercard),
                          ],
                        ),
                        const Expanded(
                          child: StaticsByCategory(),
                        ),
                      ],
                    ),
                  ),
                  flex: 2,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
