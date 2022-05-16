import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../core/widgets/responsive_widget.dart';


class NotFoundPage extends StatelessWidget {
  const NotFoundPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Modular.to.navigate('/');

    return const SafeArea(
      child: ResponsiveWidget(
        desktop: NotFoundForDesktopWidget(),
        tablet: NotFoundForTabletWidget(),
        mobile: NotFoundForMobileWidget(),
      ),
    );
  }
}

class NotFoundForDesktopWidget extends StatelessWidget {
  const NotFoundForDesktopWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Portfolio"),
      ),
      body: const Center(
        child: Text("404", style: TextStyle(fontSize: 72)),
      ),
    );
  }
}

class NotFoundForTabletWidget extends StatelessWidget {
  const NotFoundForTabletWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Portfolio"),
      ),
      body: const Center(
        child: Text("404", style: TextStyle(fontSize: 72)),
      ),
    );
  }
}

class NotFoundForMobileWidget extends StatelessWidget {
  const NotFoundForMobileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Portfolio"),
      ),
      body: const Center(
        child: Text("404", style: TextStyle(fontSize: 72)),
      ),
    );
  }
}
