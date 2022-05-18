
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget{
  final void Function()? onPressed;
  final String name;

  const CustomButton({Key? key, required this.onPressed, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed, child: Text(name));
  }

}