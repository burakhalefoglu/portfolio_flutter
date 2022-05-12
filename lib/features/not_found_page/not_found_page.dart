import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Modular.to.navigate('/');
    return Scaffold(
        appBar: AppBar(
          title: const Text("Portfolio"),
        ),
        body: const Center(
          child: Text("404", style: TextStyle(fontSize: 72)),
        ));
  }
}
