import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paymentapptask/Global/colors.dart';
import 'package:paymentapptask/Screens/HomePage.dart';
import 'package:paymentapptask/Screens/Payment.dart';
import 'package:paymentapptask/Screens/Profile.dart';

class BottomTabScreen extends StatefulWidget {
  const BottomTabScreen({Key? key}) : super(key: key);

  @override
  _BottomTabScreenState createState() => _BottomTabScreenState();
}

class _BottomTabScreenState extends State<BottomTabScreen> {
  int pageIndex = 0;

  final pages = [
    const HomePage(),
    const Page2(),
    const Payment(
        imageUrl: 'assets/images/AdminProfile.png', name: 'Ujwal Yadav'),
    const ProfilePage(
        imageUrl: 'assets/images/AdminProfile.png',
        name: 'Ujwal Yadav',
        email: 'ujwalYadav27@gmail.com'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GREY,
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 74,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 0;
                });
              },
              icon: Column(
                children: [
                  Icon(
                    Icons.dashboard,
                    color: pageIndex == 0 ? Colors.blue : DARKGREY,
                    size: 35,
                  ),
                  Text(
                    'DashBoard',
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: pageIndex == 0 ? Colors.blue : DARKGREY),
                  )
                ],
              )),
          IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 1;
                });
              },
              icon: Column(
                children: [
                  Icon(
                    Icons.qr_code_scanner,
                    color: pageIndex == 1 ? Colors.blue : DARKGREY,
                    size: 35,
                  ),
                  Text(
                    'Scan Receipt',
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: pageIndex == 1 ? Colors.blue : DARKGREY),
                  )
                ],
              )),
          IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 2;
                });
              },
              icon: Column(
                children: [
                  Icon(
                    Icons.payments_sharp,
                    color: pageIndex == 2 ? Colors.blue : DARKGREY,
                    size: 35,
                  ),
                  Text(
                    'Send & Request',
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: pageIndex == 2 ? Colors.blue : DARKGREY),
                  )
                ],
              )),
          IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 3;
                });
              },
              icon: Column(
                children: [
                  Icon(
                    Icons.account_circle,
                    color: pageIndex == 3 ? Colors.blue : DARKGREY,
                    size: 35,
                  ),
                  Text(
                    'Settings',
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: pageIndex == 3 ? Colors.blue : DARKGREY),
                  )
                ],
              )),
        ],
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: DARKGREY,
      child: const Center(
        child: Text(
          "Yet To Implement \n Scan Receipt",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: GREY,
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
