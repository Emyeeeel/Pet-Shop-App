import 'package:flutter/material.dart';
import '../widgets/navigation_bar.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const NavigationBarWidget(
          selectedItem: 'catalog',
        ),
      ],
    ));
  }
}
