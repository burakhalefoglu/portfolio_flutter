import 'package:flutter/material.dart';
import 'package:tr_portfolio/core/widgets/responsive_widget.dart';
import 'package:tr_portfolio/features/auth/reset_password/reset_pass_widget.dart';

import '../base/desktop_auth_page.dart';
import '../base/mobile_auth_page.dart';
import '../base/tablet_auth_page.dart';

class ResetPassPage extends StatelessWidget {
  const ResetPassPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: ResponsiveWidget(
          desktop: DesktopAuthPage(cardWidget: ResetPassWidget(),),
          mobile: MobileAuthPage(cardWidget: ResetPassWidget(),),
          tablet: TabletAuthPage(cardWidget: ResetPassWidget(),),
        ),
      ),
    );
  }
}
