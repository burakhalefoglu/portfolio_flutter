import 'package:flutter/material.dart';

class CustomPage extends StatefulWidget {
  final Widget child;

  const CustomPage({Key? key, required this.child}) : super(key: key);

  @override
  State<CustomPage> createState() => _HomePageState();
}

class _HomePageState extends State<CustomPage> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
