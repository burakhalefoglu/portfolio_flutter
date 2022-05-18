import 'package:flutter/material.dart';
import 'package:tr_portfolio/core/widgets/responsive_widget.dart';
import 'package:tr_portfolio/features/auth/login/login_widget.dart';

import '../base/desktop_auth_page.dart';
import '../base/mobile_auth_page.dart';
import '../base/tablet_auth_page.dart';



class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: ResponsiveWidget(
          desktop: DesktopAuthPage(cardWidget: LoginWidget(),),
          mobile: MobileAuthPage(cardWidget: LoginWidget(),),
          tablet: TabletAuthPage(cardWidget: LoginWidget(),),
        ),
      ),
    );
  }
}
