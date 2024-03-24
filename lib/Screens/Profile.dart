import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paymentapptask/Screens/Payment.dart';

import '../CommonWidgets/image_helper.dart';
import '../Global/colors.dart';

class ProfilePage extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String email;

  const ProfilePage(
      {super.key,
      required this.imageUrl,
      required this.name,
      required this.email});

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
              SliverAppBar(
                  automaticallyImplyLeading: false,
                  snap: false,
                  pinned: true,
                  floating: true,
                  expandedHeight: 400,
                  backgroundColor: Colors.white,
                  bottom: AppBar(
                    automaticallyImplyLeading: false,
                    toolbarHeight: 92,
                    backgroundColor: Colors.white,
                    flexibleSpace: Container(
                      color: Colors.white, // Color of the red container
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: TextField(
                          scrollPadding: EdgeInsets.only(bottom: 90),
                          cursorColor: DARKGREY,
                          style: const TextStyle(color: DARKGREY),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  const BorderSide(color: GREY, width: 2),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  const BorderSide(color: GREY, width: 2),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  const BorderSide(color: GREY, width: 2),
                            ),
                            hintText: 'Search Settings',
                            hintStyle:
                                const TextStyle(color: DARKGREY, fontSize: 18),
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
                  ),
                  flexibleSpace: FlexibleSpaceBar(
                    background: Padding(
                      padding: const EdgeInsets.only(
                          left: 8.0, right: 8.0, top: 8.0),
                      child: Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            decoration: const BoxDecoration(
                                color: GREY,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(35),
                                    topRight: Radius.circular(35))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 50,
                                ),
                                Container(
                                  height: 150,
                                  width: 150,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white),
                                  child: Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: ImageHelper(
                                      image: imageUrl,
                                      imageType: ImageType.asset,
                                      imageShape: ImageShape.circle,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 14.0),
                                  child: Text(
                                    name,
                                    style: GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0),
                                  child: Text(
                                    email,
                                    style: GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Positioned(
                              top: 40,
                              right: 20,
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context)
                                      .pushReplacement(MaterialPageRoute(
                                          builder: (context) => Payment(
                                                imageUrl: imageUrl,
                                                name: name,
                                              )));
                                },
                                child: Text(
                                  'Log Out',
                                  style: GoogleFonts.poppins(
                                      color: Colors.blue,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ))
                        ],
                      ),
                    ),
                  )),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) => Padding(
                    padding: const EdgeInsets.only(
                        top: 8.0, bottom: 8.0, left: 18, right: 18),
                    child: Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: GREY,
                            width: 1.0,
                          ),
                        ),
                      ),
                      child: ListTile(
                        leading: Icon(
                          Icons.person,
                          color: GREY,
                        ),
                        title: Text(
                          'Personal Info',
                          style: GoogleFonts.poppins(
                              fontSize: 18, color: Colors.black),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                  childCount: 10,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
