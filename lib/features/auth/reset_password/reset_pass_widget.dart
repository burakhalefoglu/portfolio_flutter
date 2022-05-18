import 'package:flutter/material.dart';
import 'package:tr_portfolio/widgets/custom_cards.dart';

import '../../../core/utilities/sign_in_with_google.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_images.dart';
import '../base/auth_builder_widget.dart';

class ResetPassWidget extends StatelessWidget {
  final authBuilderWidget = AuthBuilderWidget();

  var title = "Şifreni Güncelle";
  var redirectMessage = "giriş sayfasına dön";
  var redirectPage = "login";
  var buttonName = "Gönder";
  var passLabel = 'Password';
  var passAgainLabel = 'Password Again';

  ResetPassWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CustomCardWidget(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(flex: 20),
          Expanded(
              flex: 20, child: authBuilderWidget.buildTitle(title, context)),
          const Spacer(flex: 5),
          Expanded(flex: 25, child: buildEmailField(context, passLabel)),
          Expanded(flex: 25, child: buildEmailField(context, passAgainLabel)),
          Expanded(flex: 10, child: buildForgetLink(redirectMessage, context)),
          const Spacer(
            flex: 20,
          ),
          Expanded(flex: 10, child: buildSendButton(buttonName)),
          const Spacer(
            flex: 20,
          ),
        ],
      ),
    );
  }

  Padding buildEmailField(BuildContext context, String emailLabel) {
    return authBuilderWidget.buildLoginField(context, emailLabel);
  }

  Padding buildPasswordField(BuildContext context, String emailLabel) {
    return authBuilderWidget.buildLoginField(context, emailLabel);
  }

  Row buildSocialLogin(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Spacer(),
          Expanded(
              child: authBuilderWidget.buildSocialLoginButton(
                  ImageItems.google, signInWithGoogle, context)),
          Expanded(
              child: authBuilderWidget.buildSocialLoginButton(
                  ImageItems.twitter, () {}, context)),
          Expanded(
              child: authBuilderWidget.buildSocialLoginButton(
                  ImageItems.linkedin, () {}, context)),
          Expanded(
              child: authBuilderWidget.buildSocialLoginButton(
                  ImageItems.apple, () {}, context)),
          const Spacer(),
        ],
      );

  Row buildForgetLink(String forgetLinkMessage, BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Spacer(flex: 10),
        Expanded(
            flex: 4,
            child: authBuilderWidget.buildClickableText(forgetLinkMessage,
                redirectPage, context)),
        const Spacer(flex: 1),
      ],
    );
  }

  CustomButton buildSendButton(String name) => CustomButton(
        onPressed: () => print("hello"),
        name: name,
      );
}
