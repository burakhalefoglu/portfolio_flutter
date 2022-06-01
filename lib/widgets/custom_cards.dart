
import 'package:flutter/material.dart';
import 'package:tr_portfolio/core/extensions/extensions.dart';

class CustomCardWidget extends StatelessWidget{
  final Widget child;
  const CustomCardWidget({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Card(
     child: child,
     margin: context.lowMargin,
     shape: context.shapeBorder,
   );
  }
}