import 'package:flutter/material.dart';
import 'package:pet_shop_app/widgets/landing_page_widgets.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [BackgroundImage(), ContainerWidget()],
      ),
    );
  }
}
