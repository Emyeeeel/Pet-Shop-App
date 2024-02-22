// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:pet_shop_app/widgets/navigation_bar.dart';

import '../provider/cart_provider.dart';
import 'catalog_page.dart';

class CartPage extends StatelessWidget {
  const CartPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<CartModel>(
      builder: (context, cartModel, child) {
        if (cartModel.cartItems.length == 0) {
          return const CartPageWithoutContent();
        } else {
          return CartPageWithContent();
        }
      },
    );
  }
}

// ignore: must_be_immutable
class CartPageWithContent extends StatelessWidget {
  CartPageWithContent({
    Key? key,
  }) : super(key: key);

  double platFormFee = 2.52;
  double deliveryFree = 10.75;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<CartModel>(
        builder: (context, value, child) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 65,
              ),
              Center(
                child: Text(
                  'Cart',
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
                child: Text(
                  'Order Summary',
                  style: GoogleFonts.poppins(
                    color: const Color(0xFF1D1D1B),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: value.cartItems.length,
                  padding: const EdgeInsets.all(12),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        height: 140,
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(10, 15, 10, 15),
                              child: Container(
                                width: 144,
                                height: 110,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                        image: AssetImage(
                                          value.cartItems[index][1],
                                        ),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 30,
                                    child: Row(
                                      children: [
                                        Text(
                                          value.cartItems[index][0],
                                          style: GoogleFonts.poppins(
                                            color: const Color(0xFF2E2D2D),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    'Quantity: ',
                                    style: GoogleFonts.poppins(
                                      color: const Color(0xFF928D8D),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  SizedBox(
                                    width: 80,
                                    height: 20,
                                    child: Row(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            value.decrementQuantity(index);
                                          },
                                          child: Container(
                                            width: 20,
                                            decoration: BoxDecoration(
                                                color: const Color(0xFFE8BE13),
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            child: Text(
                                              '-',
                                              style: GoogleFonts.poppins(
                                                color: const Color(0xFF000000),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w900,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        ),
                                        const Spacer(),
                                        Text(
                                          value.cartItems[index][3].toString(),
                                          style: GoogleFonts.poppins(
                                            color: const Color(0xFF000000),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w900,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                        const Spacer(),
                                        GestureDetector(
                                          onTap: () {
                                            value.incrementQuantity(index);
                                          },
                                          child: Container(
                                            width: 20,
                                            decoration: BoxDecoration(
                                                color: const Color(0xFFE8BE13),
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            child: Text(
                                              '+',
                                              style: GoogleFonts.poppins(
                                                color: const Color(0xFF000000),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w900,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    '\$${value.getTotalForItemPrice(index)}',
                                    style: GoogleFonts.poppins(
                                      color: const Color(0xFFE8BE13),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Spacer(),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 20, 10, 0),
                              child: Align(
                                alignment: Alignment.topRight,
                                child: GestureDetector(
                                  onTap: () {
                                    value.removeToCart(index);
                                  },
                                  child: SizedBox(
                                    width: 20,
                                    height: 20,
                                    child: SvgPicture.asset(
                                      'lib/assets/remove_svg.svg',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CatalogPage()),
                  ),
                  child: Container(
                    width: 330,
                    height: 25,
                    decoration: const BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          color: Color(0xFFE8BE13),
                          width: 1.0,
                        ),
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'Add more items',
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFFE8BE13),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: SizedBox(
                  width: 361,
                  height: 159,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Row(
                          children: [
                            Text(
                              'Subtotal',
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xFF1D1D1B),
                              ),
                            ),
                            const Spacer(),
                            Text(
                              '\$${value.getTotalPrice()}',
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xFFE8BE13),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Row(
                          children: [
                            Text(
                              'Delivery Fee',
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xFF1D1D1B),
                              ),
                            ),
                            const Spacer(),
                            Text(
                              '\$$deliveryFree',
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xFFE8BE13),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Row(
                          children: [
                            Text(
                              'Platform Fee',
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xFF1D1D1B),
                              ),
                            ),
                            const Spacer(),
                            Text(
                              '\$$platFormFee',
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xFFE8BE13),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Row(
                          children: [
                            Text(
                              'Total',
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: const Color(0xFF1D1D1B),
                              ),
                            ),
                            const Spacer(),
                            Text(
                              '\$${double.parse(value.getTotalPrice()) + deliveryFree + platFormFee}',
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: const Color(0xFF1D1D1B),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 361,
                        height: 48,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            color: const Color(0xFFE8BE13)),
                        child: Center(
                          child: Text(
                            'Place Order',
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xFFFFFFFF),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const NavigationBarWidget(
                selectedItem: 'cart',
              ),
            ],
          );
        },
      ),
    );
  }
}

class CartPageWithoutContent extends StatelessWidget {
  const CartPageWithoutContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<CartModel>(
        builder: (context, value, child) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 65,
              ),
              Center(
                child: Text(
                  'Cart',
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              Container(
                width: 140,
                height: 120,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('lib/assets/cat_astronaut.png'),
                        fit: BoxFit.cover)),
              ),
              Container(
                width: 140,
                height: 120,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('lib/assets/shopping_basket.png'),
                        fit: BoxFit.cover)),
              ),
              const SizedBox(
                height: 35,
              ),
              SizedBox(
                width: 300,
                height: 80,
                child: Column(
                  children: [
                    Text(
                      'Floating over all this space',
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFF1D1D1B)),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'No items, more space, and a sad furriend waiting around the corner. Don’t worry, we have the pawfect idea in store for you.',
                      style: GoogleFonts.poppins(
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFF808080)),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CatalogPage()),
                ),
                child: Container(
                  width: 115,
                  height: 30,
                  decoration: BoxDecoration(
                      color: const Color(0xFFE8BE13),
                      borderRadius: BorderRadius.circular(4)),
                  child: Center(
                    child: Text(
                      'Browse Catalog',
                      style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFFFFFFFF)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              const Spacer(),
              const NavigationBarWidget(
                selectedItem: 'cart',
              ),
            ],
          );
        },
      ),
    );
  }
}
