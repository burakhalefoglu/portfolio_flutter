import 'package:flutter/material.dart';

class BestWinnerWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  final double value;
  final bool isUp;
  final double percent;

  const BestWinnerWidget({Key? key,
    required this.title,
    required this.subTitle,
    required this.value,
    required this.isUp,
    required this.percent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center();
  }
}
