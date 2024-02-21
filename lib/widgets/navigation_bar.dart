import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../screens/cart_page.dart';

class NavigationBarWidget extends StatelessWidget {
  const NavigationBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      left: 0,
      top: 0,
      child: SizedBox(
        height: 78,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 20, 30, 10),
          child: Row(
            children: [
              SizedBox(
                width: 35,
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
                      style: GoogleFonts.poppins(
                        color: Color(0xFF2E2D2D),
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              SizedBox(
                width: 45,
                height: 55,
                child: Column(
                  children: [
                    SvgPicture.asset(
                      'lib/assets/catalog_svg.svg',
                      height: 25,
                      width: 31,
                    ),
                    Text(
                      'Catalog',
                      style: GoogleFonts.poppins(
                        color: Color(0xFF2E2D2D),
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              SizedBox(
                width: 30,
                height: 55,
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CartPage())),
                      child: SvgPicture.asset(
                        'lib/assets/toCart_svg.svg',
                        height: 25,
                        width: 25,
                      ),
                    ),
                    Text(
                      'Cart',
                      style: GoogleFonts.poppins(
                        color: Color(0xFF2E2D2D),
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              SizedBox(
                width: 35,
                height: 55,
                child: Column(
                  children: [
                    SvgPicture.asset(
                      'lib/assets/profile_svg.svg',
                      height: 25,
                      width: 25,
                    ),
                    Text(
                      'Profile',
                      style: GoogleFonts.poppins(
                        color: Color(0xFF2E2D2D),
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
