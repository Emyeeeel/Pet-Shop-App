import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          height: 33,
        ),
        Container(
          width: 331,
          height: 46.89,
          decoration: BoxDecoration(
              color: const Color(0xFFF2F3F2),
              borderRadius: BorderRadius.circular(15)),
          child: Row(
            children: [
              const SizedBox(
                width: 15,
              ),
              Container(
                width: 16.55,
                height: 15.74,
                decoration: BoxDecoration(color: Color(0xFF181B19)),
              ),
              const SizedBox(
                width: 15,
              ),
              Text(
                'Search Product or Brand',
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF7C7C7C)),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        )
      ],
    ));
  }
}
