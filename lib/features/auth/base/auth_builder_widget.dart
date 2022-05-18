
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:tr_portfolio/core/extensions/extensions.dart';

import '../../../../widgets/custom_images.dart';
import '../../../core/utilities/sing_in_with_base.dart';

class AuthBuilderWidget{

  Padding buildLoginField(BuildContext context, String label) {
    return Padding(
      padding: EdgeInsets.all(context.mediumValue),
      child: TextFormField(
          decoration: InputDecoration(
              border: const OutlineInputBorder(),
              labelText: label)),
    );
  }

  InkWell buildSocialLoginButton(String imageName,
      Function func,
  BuildContext context) =>
      InkWell(
        onTap: () => singInWithBase(context, func),
        customBorder: const CircleBorder(),
        child: CircleAvatar(
          backgroundColor: context.theme.backgroundColor,
          child: PngImageWidget(
            name: imageName,
          ),
        ),
      );

      Text buildSmallText(String orMessage, BuildContext context) => Text(
        orMessage,
        style: context.theme.textTheme.bodyMedium,
      );

      Text buildTitle(String title, BuildContext context) =>
          Text(title, style: context.theme.textTheme.headline4);


  TextButton buildClickableText(String message, String redirectPage, BuildContext context) {
    return TextButton(
      child: FittedBox(
        child: Text(message, style: context.theme.textTheme
            .bodyMedium?.copyWith(color: context.theme.primaryColor)),
      ),
      onPressed: () { Modular.to.navigate('/$redirectPage'); },
    );
  }
}
