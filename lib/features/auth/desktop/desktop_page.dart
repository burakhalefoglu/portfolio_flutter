import 'package:flutter/material.dart';
import 'package:tr_portfolio/core/extensions/extensions.dart';

import '../widget/login_widget.dart';

class AuthPageDesktop extends StatelessWidget {
  const AuthPageDesktop({Key? key}) : super(key: key);

  // google sing -> singInWithBase(context, signInWithGoogle)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: context.highVerticalPadding,
        child: Row(
          children: [
            Expanded(flex: 35,child: context.emptyWidgetWidth),
            Expanded( flex: 30,
              child: LoginWidget(),
            ),
            Expanded(flex: 35,child: context.emptyWidgetWidth),
          ],
        ),
      ),
    );
  }
}
