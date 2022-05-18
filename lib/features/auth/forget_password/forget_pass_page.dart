import 'package:flutter/material.dart';
import 'package:tr_portfolio/core/widgets/responsive_widget.dart';
import 'package:tr_portfolio/features/auth/reset_password/reset_pass_widget.dart';

import '../base/desktop_auth_page.dart';
import '../base/mobile_auth_page.dart';
import '../base/tablet_auth_page.dart';
import 'forget_pass_widget.dart';

class ForgetPassPage extends StatelessWidget {
  const ForgetPassPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: ResponsiveWidget(
          desktop: DesktopAuthPage(cardWidget: ForgetPassWidget(),),
          mobile: MobileAuthPage(cardWidget: ForgetPassWidget(),),
          tablet: TabletAuthPage(cardWidget: ForgetPassWidget(),),
        ),
      ),
    );
  }
}
