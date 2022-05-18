import 'package:flutter/material.dart';
import 'package:tr_portfolio/core/extensions/extensions.dart';
import 'package:flutter/gestures.dart';
import 'package:tr_portfolio/widgets/custom_cards.dart';

import '../../../core/utilities/sign_in_with_google.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_images.dart';
import '../base/auth_builder_widget.dart';

class LoginWidget extends StatelessWidget {
  final authBuilderWidget = AuthBuilderWidget();
  var title = "Giriş";
  var subtitle = "Hesabınız yok ise otomatik oluşturulacaktır.";
  var orMessage = "yada";
  var forgetLinkMessage = "şifremi unuttum";
  var buttonName = "Giriş yap";
  var emailLabel = 'Email';
  var passwordLabel = 'Şifre';
  var redirectPage = "forget";

  var message1 = 'Sitemizde devam ederek ';
  var message2 = 'Kullanım koşullarını';
  var message3 = ' ve ';
  var message4 = 'Gizlilik Politikasını';
  var message5 = ' kabul etmiş olursunuz.';

  LoginWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CustomCardWidget(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(flex: 10),
          Expanded(
              flex: 20, child: authBuilderWidget.buildTitle(title, context)),
          Expanded(
              flex: 5, child: authBuilderWidget.buildSmallText(subtitle, context)),
          const Spacer(flex: 10),
          Expanded(flex: 8, child: buildSocialLogin(context)),
          const Spacer(flex: 5),
          Expanded(
              flex: 10,
              child: authBuilderWidget.buildSmallText(orMessage, context)),
          Expanded(flex: 30, child: buildEmailField(context, emailLabel)),
          Expanded(
            flex: 30,
            child: buildPasswordField(context, passwordLabel),
          ),
          Expanded(
              flex: 10, child: buildForgetLink(forgetLinkMessage, context)),
          const Spacer(
            flex: 20,
          ),
          Expanded(flex: 10, child: buildSendButton(buttonName)),
          Expanded(
              flex: 10, child: buildPrivacyPolicyAndTermsOfCondition(context)),
          const Spacer(
            flex: 5,
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
            child: authBuilderWidget.buildClickableText(
                forgetLinkMessage, redirectPage , context)),
        const Spacer(flex: 1),
      ],
    );
  }

  CustomButton buildSendButton(String name) => CustomButton(
        onPressed: () => print("hello"),
        name: name,
      );

  FittedBox buildPrivacyPolicyAndTermsOfCondition(BuildContext context) {
    var clickableTextStyle = context.theme.textTheme.bodyLarge
        ?.copyWith(color: context.theme.primaryColor);
    var defaultTextStyle = context.theme.textTheme.bodySmall;

    return FittedBox(
      child: Padding(
        padding: context.lowHorizontalPadding,
        child: Text.rich(
          TextSpan(
              text: message1,
              style: defaultTextStyle,
              children: <TextSpan>[
                TextSpan(
                    text: message2,
                    style: clickableTextStyle,
                    recognizer: TapGestureRecognizer()..onTap = () {}),
                TextSpan(
                    text: message3,
                    style: defaultTextStyle,
                    children: <TextSpan>[
                      TextSpan(
                          text: message4,
                          style: clickableTextStyle,
                          recognizer: TapGestureRecognizer()..onTap = () {}),
                      TextSpan(
                        text: message5,
                        style: defaultTextStyle,
                      )
                    ])
              ]),
        ),
      ),
    );
  }
}
