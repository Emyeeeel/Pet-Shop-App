import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_shop_app/screens/details_page.dart';

// ignore: must_be_immutable
class CatProductTile extends StatelessWidget {
  final String catName;
  final String catPicPath;
  final double price;
  final int quantity;
  void Function()? onTap;

  CatProductTile(
      {super.key,
      required this.catName,
      required this.catPicPath,
      required this.price,
      required this.quantity,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 168.5,
          height: 171,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 12, 12, 5),
                child: GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            DetailsPage(catProductName: catName)),
                  ),
                  child: Container(
                      width: 144,
                      height: 101,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          image:
                              DecorationImage(image: AssetImage(catPicPath)))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 0, 12, 5),
                child: SizedBox(
                  width: 144,
                  child: Text(
                    catName,
                    style: GoogleFonts.poppins(
                      color: const Color(0xFF2E2D2D),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                child: SizedBox(
                  width: 144,
                  child: Row(
                    children: [
                      Text(
                        '\$$price',
                        style: GoogleFonts.poppins(
                          color: const Color(0xFFE8BE13),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: onTap,
                        child: SvgPicture.asset(
                          'lib/assets/cart_svg.svg',
                          height: 16,
                          width: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
