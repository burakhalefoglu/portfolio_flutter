import 'package:flutter/material.dart';
import 'package:tr_portfolio/core/extensions/extensions.dart';

import '../widget/login_widget.dart';

class AuthPageMobile extends StatelessWidget {
  const AuthPageMobile({Key? key}) : super(key: key);

  // google sing -> singInWithBase(context, signInWithGoogle)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: context.highVerticalPadding,
        child: Row(
          children: [
            Expanded(flex: 10,child: context.emptyWidgetWidth),
            Expanded( flex: 80,
              child: LoginWidget(),
            ),
            Expanded(flex: 10,child: context.emptyWidgetWidth),
          ],
        ),
      ),
    );
  }
}
