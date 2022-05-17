
import 'package:flutter/material.dart';
import 'package:tr_portfolio/core/extensions/extensions.dart';
import 'package:tr_portfolio/core/styles/styles.dart';
import 'package:tr_portfolio/widgets/cards.dart';

import '../../../widgets/button.dart';
import '../../../widgets/images.dart';

class LoginWidget extends StatelessWidget {
  var title = "Giriş";
  var orMessage = "yada";
  var forgetLinkMessage = "şifremi unuttum";
  var buttonName = "Giriş yap";

  LoginWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var emailLabel = 'Email';
    var passwordLabel = 'Şifre';
    return CustomCardWidget(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(flex: 10),
          Expanded(flex: 20, child: buildTitle(title, context)),
          const Spacer(flex: 10),
          Expanded(flex: 8, child: buildSocialLogin(context)),
          const Spacer(flex: 5),
          Expanded(flex: 10, child: buildSmallText(orMessage, context)),
          Expanded(flex: 30, child: buildEmailField(context, emailLabel)),
          Expanded(flex: 30, child: buildPasswordField(context, passwordLabel),),
          Expanded(flex: 10, child: buildForgetLink(forgetLinkMessage, context)),
          const Spacer(flex: 30,),
          Expanded(flex: 10, child: buildLoginButton(buttonName)),
          const Spacer(flex: 10,),
        ],
      ),
    );
  }

  Padding buildPasswordField(BuildContext context, String passwordLabel) {
    return Padding(
          padding: EdgeInsets.all(context.mediumValue),
          child: TextFormField(
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              labelText: passwordLabel)),
        );
  }

  Padding buildEmailField(BuildContext context, String emailLabel) {
    return buildPasswordField(context, emailLabel);
  }

  Row buildSocialLogin(BuildContext context) => Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Spacer(),
          Expanded(child: buildSocialLoginButton(ImageItems.google, context)),
          Expanded(child: buildSocialLoginButton(ImageItems.twitter, context)),
          Expanded(child: buildSocialLoginButton(ImageItems.linkedin, context)),
          Expanded(child: buildSocialLoginButton(ImageItems.apple, context)),
          const Spacer(),
        ],
      );

  InkWell buildSocialLoginButton(String imageName, BuildContext context) =>
      InkWell(
          onTap: () => print("clicled icon"),
          customBorder: new CircleBorder(),
          child: CircleAvatar(
            backgroundColor: Styles.transparent,
            child: PngImageWidget(
              name: imageName,
            ),
          ),
      );
  
  Row buildForgetLink(String forgetLinkMessage, BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Spacer(flex: 10),
        Expanded(flex: 4, child: buildForgetText(context)),
        const Spacer(flex: 1),
      ],
    );
  }

  InkWell buildForgetText(BuildContext context) {
    return InkWell(
      child: FittedBox(
        child: Text(forgetLinkMessage, style: context.theme.textTheme
            .bodyMedium?.copyWith(color: Styles.primaryColorPictonBlue)),
      ),
      onTap: () => print("_formKey"),
    );
  }

  Text buildSmallText(String orMessage, BuildContext context) => Text(
        orMessage,
        style: context.theme.textTheme.bodyMedium,
      );

  Text buildTitle(String title, BuildContext context) =>
      Text(title, style: context.theme.textTheme.headline4);

  CustomButton buildLoginButton(String name) => CustomButton(
        onPressed: () => print("hello"),
        name: name,
      );
}
