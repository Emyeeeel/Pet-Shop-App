import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_shop_app/screens/catalog_page.dart';

import '../screens/cart_page.dart';

class NavigationBarWidget extends StatefulWidget {
  final String selectedItem;

  const NavigationBarWidget({Key? key, required this.selectedItem})
      : super(key: key);

  @override
  _NavigationBarWidgetState createState() => _NavigationBarWidgetState();
}

class _NavigationBarWidgetState extends State<NavigationBarWidget> {
  late String _selectedItem;

  @override
  void initState() {
    super.initState();
    _selectedItem = widget.selectedItem;
  }

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
              _buildItem(
                'Home',
                'lib/assets/homepage_svg.svg',
                _selectedItem == 'home',
                () => setState(() => _selectedItem = 'home'),
              ),
              const Spacer(),
              _buildItem(
                'Catalog',
                'lib/assets/catalog_svg.svg',
                _selectedItem == 'catalog',
                () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CatalogPage()),
                ),
              ),
              const Spacer(),
              _buildItem(
                'Cart',
                'lib/assets/toCart_svg.svg',
                _selectedItem == 'cart',
                () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CartPage()),
                ),
              ),
              const Spacer(),
              _buildItem(
                'Profile',
                'lib/assets/profile_svg.svg',
                _selectedItem == 'profile',
                () => setState(() => _selectedItem = 'profile'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildItem(
      String title, String svgPath, bool isSelected, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 35,
        height: 55,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
              width: 30,
              child: SvgPicture.asset(
                svgPath,
                color: isSelected
                    ? const Color(0xFFE8BE13)
                    : const Color(0xFF2E2D2D),
              ),
            ),
            const SizedBox(
              height: 2.5,
            ),
            Text(
              title,
              style: GoogleFonts.poppins(
                color: isSelected
                    ? const Color(0xFFE8BE13)
                    : const Color(0xFF2E2D2D),
                fontSize: 8,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
