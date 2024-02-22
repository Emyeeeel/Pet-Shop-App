// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../provider/cart_provider.dart';
import '../widgets/navigation_bar.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({
    Key? key,
    required this.catProductName,
  }) : super(key: key);

  final String catProductName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Consumer<CartModel>(builder: (context, value, child) {
      return Column(
        children: [
          SizedBox(
            height: 765,
            child: Stack(
              children: [
                Container(
                  height: 410,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(value.catItemsDetails[
                          value.getShopItemIndex(catProductName)][1]),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(
                  top: 355,
                  child: Container(
                    height: 425,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(26.27),
                          topRight: Radius.circular(26.27),
                        )),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                          child: SizedBox(
                            width: 322,
                            child: Row(
                              children: [
                                SizedBox(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        value.shopItems[value.getShopItemIndex(
                                            catProductName)][0],
                                        style: GoogleFonts.poppins(
                                          fontSize: 25,
                                          fontWeight: FontWeight.w700,
                                          color: const Color(0xFF141415),
                                        ),
                                      ),
                                      Text(
                                        'Canada · 8m',
                                        style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400,
                                          color: const Color(0xFF5F5F63),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Spacer(),
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.76),
                                      color: const Color(0xFFE8BE13),
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              'lib/assets/Expand.png'))),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 45,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(22, 0, 0, 0),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 26.27,
                                  height: 26.27,
                                  child: SvgPicture.asset(
                                      'lib/assets/cat_paw_svg.svg'),
                                ),
                                const SizedBox(
                                  width: 9,
                                ),
                                Text(
                                  // ignore: prefer_interpolation_to_compose_strings
                                  'About ' +
                                      value.catItemsDetails[value
                                          .getShopItemIndex(catProductName)][6],
                                  style: GoogleFonts.poppins(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: const Color(0xFF141415),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 100,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                            child: Row(
                              children: [
                                Container(
                                  width: 115,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(17.51),
                                    color: const Color(0xFF98FF98)
                                        .withOpacity(0.1),
                                  ),
                                  padding: const EdgeInsets.all(12),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Weight',
                                        style: GoogleFonts.poppins(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          color: const Color(0xFF5F5F63),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4.38,
                                      ),
                                      Text(
                                        value.catItemsDetails[
                                                value.getShopItemIndex(
                                                    catProductName)][3] +
                                            ' kg',
                                        style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: const Color(0xFFE8BE13),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Spacer(),
                                Container(
                                  width: 115,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(17.51),
                                    color: const Color(0xFF98FF98)
                                        .withOpacity(0.1),
                                  ),
                                  padding: const EdgeInsets.all(12),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        value.catItemsDetails[
                                                value.getShopItemIndex(
                                                    catProductName)][4] +
                                            ' cm',
                                        style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: const Color(0xFFE8BE13),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4.38,
                                      ),
                                      Text(
                                        'Height',
                                        style: GoogleFonts.poppins(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          color: const Color(0xFF5F5F63),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Spacer(),
                                Container(
                                  width: 115,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(17.51),
                                    color: const Color(0xFF98FF98)
                                        .withOpacity(0.1),
                                  ),
                                  padding: const EdgeInsets.all(12),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Color',
                                        style: GoogleFonts.poppins(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          color: const Color(0xFF5F5F63),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4.38,
                                      ),
                                      Text(
                                        value.catItemsDetails[
                                            value.getShopItemIndex(
                                                catProductName)][5],
                                        style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: const Color(0xFFE8BE13),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(22, 18, 22, 0),
                          child: SizedBox(
                            height: 125,
                            child: Text(
                              value.catItemsDetails[
                                  value.getShopItemIndex(catProductName)][2],
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xFFA1A1A1),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          const NavigationBarWidget(
            selectedItem: 'catalog',
          ),
        ],
      );
    }));
  }
}
