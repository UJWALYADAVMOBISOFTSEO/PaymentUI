import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paymentapptask/Global/colors.dart';
import 'package:paymentapptask/Screens/BottomTab.dart';
import 'package:paymentapptask/Screens/HomePage.dart';
import 'package:simple_ripple_animation/simple_ripple_animation.dart';

import '../CommonWidgets/image_helper.dart';

class Payment extends StatelessWidget {
  final String imageUrl;
  final String name;

  const Payment({super.key, required this.imageUrl, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: BLUE,
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            Expanded(
              flex: 1,
              child: RippleAnimation(
                color: Colors.white,
                delay: const Duration(milliseconds: 600),
                repeat: true,
                minRadius: 120,
                ripplesCount: 2,
                duration: const Duration(milliseconds: 6 * 300),
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: ImageHelper(
                      image: imageUrl,
                      imageType: ImageType.asset,
                      alignment: Alignment.center,
                      imageShape: ImageShape.circle,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Paying',
                    style:
                        GoogleFonts.poppins(color: Colors.white, fontSize: 22),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    name,
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      // Navigator.pop(context);
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const BottomTabScreen()));
                    },
                    child: Container(
                      width: 200,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Cancel Payment',
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
