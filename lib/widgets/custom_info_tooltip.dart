
import 'package:flutter/material.dart';
import 'package:tr_portfolio/core/extensions/extensions.dart';

Tooltip buildInfo(BuildContext context, String infoText) {
  return Tooltip(
    message: infoText,
    child: Icon(
      Icons.info_outline,
      color: context.theme.iconTheme.color?.withOpacity(.3),
    ),
  );
}