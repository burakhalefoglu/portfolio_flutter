
import 'package:flutter/material.dart';
import 'package:tr_portfolio/core/widgets/responsive_widget.dart';
import 'package:tr_portfolio/features/auth/desktop/desktop_page.dart';
import 'package:tr_portfolio/features/auth/mobile/mobile_page.dart';
import 'package:tr_portfolio/features/auth/tablet/tablet_page.dart';

class AuthPage extends StatelessWidget{
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveWidget(desktop: AuthPageDesktop(),mobile: AuthPageMobile(),
        tablet: AuthPageTablet(),
    );
  }

}