import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Portfolio"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Modular.to.navigate('/login');
          }, child: const Text("Login"),
        ),
      ),
    );
  }
}
