import 'package:flutter/material.dart';
import 'package:tr_portfolio/core/extensions/extensions.dart';
import 'package:tr_portfolio/core/widgets/responsive_widget.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/custom_bottom_bar.dart';
import 'dashboard_desktop.dart';


class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DashboardHomePage();
  }
}

class DashboardHomePage extends StatelessWidget {
  var appbar = CustomAppbar();
  var customBottomBar = CustomBottomBar();

  var appbarTitle = "Portfolio";

  DashboardHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        drawer: context.isMobile? null: buildDrawer(),
        appBar: appbar.buildAppBar(appbarTitle, context),
        body: ResponsiveWidget(
            desktop: DashboardDesktop(),
            tablet: DashboardDesktop(),
            mobile: DashboardDesktop(),
        ),
        floatingActionButton: buildFloatingActionButton(context),
        floatingActionButtonLocation:  FloatingActionButtonLocation.endFloat,
       bottomNavigationBar: context.isMobile? customBottomBar.buildBottomNavigationBar(context): null,
      ),
    );
  }

  Drawer buildDrawer() => Drawer();



  SizedBox buildFloatingActionButton(BuildContext context) {
    return SizedBox(
      height: context.isMobile? context.biggestValue: context.bigValue,
      child: FittedBox(
        child: FloatingActionButton(
            mini: false,
            onPressed: () {},
            tooltip: "Yeni Bir Portföy kur.",
            child: Icon(Icons.add,
                    color: context.theme.colorScheme.onPrimary),
          ),
      ),
    );
  }

}
