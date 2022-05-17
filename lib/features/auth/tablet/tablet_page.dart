import 'package:flutter/material.dart';
import 'package:tr_portfolio/core/extensions/extensions.dart';

import '../widget/login_widget.dart';

class AuthPageTablet extends StatelessWidget {
  const AuthPageTablet({Key? key}) : super(key: key);

  // google sing -> singInWithBase(context, signInWithGoogle)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: context.highVerticalPadding,
        child: Row(
          children: [
            Expanded(flex: 20,child: context.emptyWidgetWidth),
            Expanded( flex: 60,
              child: LoginWidget(),
            ),
            Expanded(flex: 20,child: context.emptyWidgetWidth),
          ],
        ),
      ),
    );
  }
}
