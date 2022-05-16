import 'package:flutter/material.dart';
import 'package:tr_portfolio/core/widgets/responsive_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: ResponsiveWidget(
        desktop: ProfileForDesktopWidget(),
        tablet: ProfileForTabletWidget(),
        mobile: ProfileForMobileWidget(),
      ),
    );
  }
}

class ProfileForDesktopWidget extends StatelessWidget {
  const ProfileForDesktopWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("This is profile"),
      ),
    );
  }
}

class ProfileForTabletWidget extends StatelessWidget {
  const ProfileForTabletWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("This is profile"),
      ),
    );
  }
}

class ProfileForMobileWidget extends StatelessWidget {
  const ProfileForMobileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("This is profile"),
      ),
    );
  }
}
