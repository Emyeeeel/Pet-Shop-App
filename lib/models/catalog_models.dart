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
    return SizedBox(
      width: 168.5,
      height: 171,
      child: Column(
        children: [
          Container(
              width: 144.5,
              height: 101,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  image: DecorationImage(image: AssetImage(catPicPath)))),
          const SizedBox(
            height: 10,
          ),
          Text(
            catName,
            style: const TextStyle(
              color: Color(0xFF2E2D2D),
              fontSize: 20,
              fontFamily: 'NATS',
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
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
            ],
          )
        ],
      ),
    );
  }
}
