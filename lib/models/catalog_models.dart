import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CatProductTile extends StatelessWidget {
  final String catName;
  final String catPicPath;
  final double price;

  CatProductTile({
    super.key,
    required this.catName,
    required this.catPicPath,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 168.5,
          height: 171,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.black)),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 12, 12, 10),
                child: Container(
                    width: 144,
                    height: 101,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        image: DecorationImage(image: AssetImage(catPicPath)))),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                child: SizedBox(
                  width: 144,
                  child: Text(
                    catName,
                    style: const TextStyle(
                      color: Color(0xFF2E2D2D),
                      fontSize: 18,
                      fontFamily: 'NATS',
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
                        price.toString(),
                        style: const TextStyle(
                          color: Color(0xFFE8BE13),
                          fontSize: 16,
                          fontFamily: 'NATS',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      //add cart svg given filepath "lib/assets/cart_svg.svg"
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
