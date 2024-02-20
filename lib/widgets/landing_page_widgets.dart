import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      top: 0,
      child: Container(
        height: 540,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/assets/cat-1.png'),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class ContainerWidget extends StatelessWidget {
  int counter = 0;

  ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      top: 479.08,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 372,
        decoration: const BoxDecoration(
          color: Color(0xFFFFFFFF),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(26.27),
            topRight: Radius.circular(26.27),
          ),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 44,
            ),
            PageIndicator(id: counter),
            const SizedBox(
              height: 26,
            ),
            SizedBox(
              width: 366.69,
              child: Text(
                'Your One-Stop Pet Shop Experience!',
                style: GoogleFonts.poppins(
                  fontSize: 26.27,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 9,
            ),
            SizedBox(
              width: 366.69,
              child: Text(
                'Connect with 5-star pet caregivers near you who offer boarding, walking, house sitting or day care.',
                style: GoogleFonts.poppins(
                  fontSize: 17.51,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 44,
            ),
            GestureDetector(
              child: Container(
                width: 366.69,
                height: 52.54,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.76),
                    color: const Color(0xFFE8BE13)),
                child: Center(
                  child: Text(
                    'Get Started',
                    style: GoogleFonts.poppins(
                        fontSize: 17.51,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xFFFFFFFF)),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PageIndicator extends StatelessWidget {
  final int id;

  const PageIndicator({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    List<int> modelIds = [0, 1, 2];

    List<Widget> widgets = [];
    for (int i = 0; i < modelIds.length; i++) {
      widgets.add(
        Container(
          width: 17.51,
          height: 6.57,
          decoration: BoxDecoration(
            color: modelIds[i] == id ? const Color(0xFFE8BE13) : null,
            borderRadius: BorderRadius.circular(3.28),
            border: Border.all(width: 1.0, color: const Color(0xFFE0E0E1)),
          ),
        ),
      );

      if (i < modelIds.length - 1) {
        widgets.add(const SizedBox(width: 8.76));
      }
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: widgets,
    );
  }
}
