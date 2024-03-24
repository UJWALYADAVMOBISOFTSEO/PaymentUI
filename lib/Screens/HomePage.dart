import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paymentapptask/Global/colors.dart';

import '../CommonWidgets/image_helper.dart';
import '../Components/HomeAppBar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AnnotatedRegion(
        value: const SystemUiOverlayStyle(
          ///This Is To Remove StatusBar Color
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
        ),
        child: Scaffold(
          backgroundColor: Colors.white,
          body: CustomScrollView(
            slivers: <Widget>[
              const HomeAppBar(),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) => Padding(
                    padding: const EdgeInsets.only(
                        top: 8.0, bottom: 8.0, left: 18, right: 18),
                    child: Container(
                      height: 120,
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(color: GREY, width: 2))),
                      child: Row(
                        children: [
                          Expanded(
                              flex: 4,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "Apple MacBook Pro 16' - Sliver",
                                    style: GoogleFonts.poppins(
                                        color: Colors.black, fontSize: 18),
                                  ),
                                  Text(
                                    'Apple Store',
                                    style: GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 300,
                                    child: Text(
                                      'Return Time Remaining 2 Weeks 1342 Colorado Street, Suite 32 - 92003',
                                      style: GoogleFonts.poppins(
                                          color: DARKGREY, fontSize: 18),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                    ),
                                  )
                                ],
                              )),
                          Expanded(
                              flex: 1,
                              child: Align(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  '\$3,234.03',
                                  style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                              )),
                        ],
                      ),
                    ),
                  ),
                  childCount: 51,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
