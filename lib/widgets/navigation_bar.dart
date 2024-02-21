import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../screens/cart_page.dart';

class NavigationBarWidget extends StatelessWidget {
  const NavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      left: 0,
      top: 0,
      child: Container(
        height: 78,
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: [
            SizedBox(
              width: 31,
              height: 55,
              child: Column(
                children: [
                  SvgPicture.asset(
                    'lib/assets/homepage_svg.svg',
                    height: 25,
                    width: 28,
                  ),
                  Text(
                    'Home',
                    style: const TextStyle(
                      color: Color(0xFF2E2D2D),
                      fontSize: 14,
                      fontFamily: 'NATS',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 31,
              height: 55,
              child: Column(
                children: [
                  SvgPicture.asset(
                    'lib/assets/catalog_svg.svg',
                    height: 25,
                    width: 28,
                  ),
                  Text(
                    'Catalog',
                    style: const TextStyle(
                      color: Color(0xFF2E2D2D),
                      fontSize: 14,
                      fontFamily: 'NATS',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const CartPage())),
              child: SizedBox(
                width: 31,
                height: 55,
                child: Column(
                  children: [
                    SvgPicture.asset(
                      'lib/assets/toCart_svg.svg',
                      height: 25,
                      width: 28,
                    ),
                    Text(
                      'Cart',
                      style: const TextStyle(
                        color: Color(0xFF2E2D2D),
                        fontSize: 14,
                        fontFamily: 'NATS',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 31,
              height: 55,
              child: Column(
                children: [
                  SvgPicture.asset(
                    'lib/assets/profile_svg.svg',
                    height: 25,
                    width: 28,
                  ),
                  Text(
                    'Profile',
                    style: const TextStyle(
                      color: Color(0xFF2E2D2D),
                      fontSize: 14,
                      fontFamily: 'NATS',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
