

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tr_portfolio/core/styles/custom_colors.dart';

class CustomDropdownButton extends StatefulWidget{
  final String defaultValue;
  final List<String> elements;
  final Function onStateChange;

  const CustomDropdownButton({Key? key,
    required this.defaultValue,
    required this.onStateChange, required this.elements}) : super(key: key);

  @override
  State<CustomDropdownButton> createState() => _CustomDropdownButtonState();
}

class _CustomDropdownButtonState extends State<CustomDropdownButton> {
  String dropdownvalue = '';

  @override
  Widget build(BuildContext context) {
    dropdownvalue = widget.defaultValue;
    return DropdownButtonFormField<String>(
      value: dropdownvalue,
      icon: const Icon(Icons.keyboard_arrow_down),
      style: TextStyle(color: CustomColors.primary.getColor),
      onChanged: (String? newValue) {
        setState(() {
          dropdownvalue = newValue!;
          widget.onStateChange(newValue);
        });
      },
      items: widget.elements
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}