import 'package:flutter/material.dart';
import 'package:tr_portfolio/core/widgets/responsive_widget.dart';
import 'package:tr_portfolio/features/dashboard/desktop/dashboard_desktop.dart';


class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const DashboardHomePage();
  }
}

class DashboardHomePage extends StatefulWidget {
  const DashboardHomePage({Key? key}) : super(key: key);

  @override
  State<DashboardHomePage> createState() => _HomePageState();
}

class _HomePageState extends State<DashboardHomePage> {
  @override
  Widget build(BuildContext context) {
    return const ResponsiveWidget(
      desktop: DashboardDesktop()
    );
  }
}
