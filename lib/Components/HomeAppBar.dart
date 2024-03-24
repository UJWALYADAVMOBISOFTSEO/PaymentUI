import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../CommonWidgets/image_helper.dart';
import '../Global/colors.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
        snap: false,
        pinned: true,
        floating: true,
        expandedHeight: 610,
        backgroundColor: GREY,
        bottom: AppBar(
          toolbarHeight: 150,
          backgroundColor: Colors.white,
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                height: 95,
                color: Colors.white, // Color of the red container
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: TextField(
                    scrollPadding: EdgeInsets.only(bottom:90),
                    cursorColor: GREY,
                    style: const TextStyle(color: DARKGREY),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: GREY, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: GREY, width: 2),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: GREY, width: 2),
                      ),
                      hintText: 'Search Transactions',
                      hintStyle: const TextStyle(color: DARKGREY, fontSize: 18),
                      isDense: true,
                      contentPadding: const EdgeInsets.all(14),
                      filled: true,
                      fillColor: GREY,
                      counterText: '',
                      prefixIcon: const Icon(
                        Icons.search,
                        size: 25,
                      ),
                      prefixIconColor: Colors.blue,
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                height: 50,
                child: Padding(
                  padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Your Activity',
                        style: GoogleFonts.poppins(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      const Icon(
                        Icons.align_horizontal_left,
                        color: Colors.blue,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        flexibleSpace: FlexibleSpaceBar(
          background: Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 70,
                ),
                SizedBox(
                  height: 70,
                  child: Row(
                    children: [
                      Expanded(
                          flex: 9,
                          child: Row(
                            children: [
                              const Expanded(
                                flex: 1,
                                child: ImageHelper(
                                  image: 'assets/images/AdminProfile.png',
                                  imageType: ImageType.asset,
                                ),
                              ),
                              Expanded(
                                  flex: 4,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Hi Ujwal,',
                                          style: GoogleFonts.poppins(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                        ),
                                        Text(
                                          "Here's your spending dashboard",
                                          style: GoogleFonts.poppins(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  )),
                            ],
                          )),
                      const Expanded(
                          flex: 1,
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Icon(
                              Icons.notifications,
                              color: DARKGREY,
                            ),
                          )),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 120,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '\$204.05',
                                style: GoogleFonts.poppins(
                                    fontSize: 38,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Your Balance',
                                style: GoogleFonts.poppins(
                                    fontSize: 16, color: DARKGREY),
                              ),
                            ],
                          )),
                      Container(
                        height: 100,
                        width: 2,
                        color: Colors.grey,
                      ),
                      Expanded(
                          flex: 1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '30',
                                    style: GoogleFonts.poppins(
                                        fontSize: 38,
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Last Days',
                                    style: GoogleFonts.poppins(
                                        fontSize: 16, color: DARKGREY),
                                  ),
                                ],
                              ),
                              const Icon(
                                Icons.arrow_drop_down,
                                color: Colors.blue,
                                size: 35,
                              )
                            ],
                          )),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 152,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Send Again',
                        style: GoogleFonts.poppins(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return SizedBox(
                              width: 90,
                              child: Column(
                                children: [
                                  Container(
                                    height: 65,
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.all(3.0),
                                      child: ImageHelper(
                                        image: 'assets/images/AdminProfile.png',
                                        imageType: ImageType.asset,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 1, right: 1),
                                    child: Wrap(
                                      children: [
                                        Text(
                                          'Ujwal Yadav',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.poppins(
                                              fontSize: 14,
                                              color: DARKGREY,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}