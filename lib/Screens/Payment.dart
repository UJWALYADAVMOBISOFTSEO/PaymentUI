import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paymentapptask/Global/colors.dart';
import 'package:simple_ripple_animation/simple_ripple_animation.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});

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
            const Expanded(
              flex: 1,
              child: RippleAnimation(
                color: Colors.white,
                delay: Duration(milliseconds: 600),
                repeat: true,
                minRadius: 120,
                ripplesCount: 2,
                duration: Duration(milliseconds: 6 * 300),
                child: CircleAvatar(
                  minRadius: 100,
                  maxRadius: 100,
                  backgroundImage: NetworkImage(
                      'https://images.vexels.com/media/users/3/147101/isolated/preview/b4a49d4b864c74bb73de63f080ad7930-instagram-profile-button.png'),
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
                    'Ujwal Yadav',
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
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
