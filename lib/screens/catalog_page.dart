import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_shop_app/models/catalog_models.dart';
import 'package:provider/provider.dart';

import '../provider/cart_provider.dart';
import '../widgets/navigation_bar.dart';

class CatalogPage extends StatefulWidget {
  const CatalogPage({Key? key}) : super(key: key);

  @override
  _CatalogPageState createState() => _CatalogPageState();
}

class _CatalogPageState extends State<CatalogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const SizedBox(
          height: 65,
        ),
        Text(
          'Store',
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          width: 331,
          height: 46.89,
          decoration: BoxDecoration(
            color: const Color(0xFFF2F3F2),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              const SizedBox(
                width: 15,
              ),
              SizedBox(
                width: 16.55,
                height: 15.74,
                child: SvgPicture.asset(
                  'lib/assets/search_svg.svg',
                  height: 30,
                  width: 30,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search Cat Name',
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFF7C7C7C),
                    ),
                    border: InputBorder.none,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                width: 110,
              )
            ],
          ),
        ),
        Expanded(
          child: Consumer<CartModel>(
            builder: (context, value, child) {
              return GridView.builder(
                itemCount: value.shopItems.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return CatProductTile(
                    catName: value.shopItems[index][0],
                    catPicPath: value.shopItems[index][1],
                    price: value.shopItems[index][2],
                    quantity: value.shopItems[index][3],
                    onTap: () {
                      Provider.of<CartModel>(context, listen: false)
                          .addToCart(index);
                    },
                  );
                },
              );
            },
          ),
        ),
        const NavigationBarWidget(
          selectedItem: 'catalog',
        ),
      ],
    ));
  }
}
