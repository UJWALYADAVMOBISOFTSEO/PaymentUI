import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paymentapptask/Global/colors.dart';
import 'package:paymentapptask/Modals/HomeModal.dart';
import 'package:paymentapptask/Screens/ShimmerEffects/ShimmerEffectScreen.dart';

import '../CommonWidgets/image_helper.dart';
import '../Components/HomeAppBar.dart';
import '../Modals/ProfileModal.dart';
import 'Profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isLoading = true;
  final List<Map<String, dynamic>> _allUsers = homeScreenModal
      .map((modal) => {
            'id': modal.id,
            'title': modal.title,
            'subTitle': modal.subTitle,
            'description': modal.description,
            'price': modal.price,
          })
      .toList();

  // This list holds the data for the list view
  List<Map<String, dynamic>> _foundUsers = [];

  @override
  void initState() {
    // TODO: implement initState
    // Simulate loading for 5 seconds
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _isLoading = false;
      });
    });
    // at the beginning, all users are shown
    _foundUsers = _allUsers;
    super.initState();
  }

  // This function is called whenever the text field changes
  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = _allUsers;
    } else {
      results = _allUsers
          .where((user) => user["subTitle"]
              .toLowerCase()
              .contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }

    // Refresh the UI
    setState(() {
      _foundUsers = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return _isLoading
        ? LoadingListPage()
        : SafeArea(
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
                    // const HomeAppBar(),
                    SliverAppBar(
                        snap: false,
                        pinned: true,
                        floating: true,
                        expandedHeight: 610,
                        backgroundColor: Colors.white,
                        bottom: AppBar(
                          toolbarHeight: 150,
                          backgroundColor: Colors.white,
                          flexibleSpace: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Container(
                                height: 95,
                                color:
                                    Colors.white, // Color of the red container
                                child: Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: TextField(
                                    onChanged: (value) => _runFilter(value),
                                    scrollPadding:
                                        const EdgeInsets.only(bottom: 90),
                                    cursorColor: DARKGREY,
                                    style: const TextStyle(color: DARKGREY),
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                            color: GREY, width: 2),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                            color: GREY, width: 2),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                            color: GREY, width: 2),
                                      ),
                                      hintText: 'Search Transactions',
                                      hintStyle: const TextStyle(
                                          color: DARKGREY, fontSize: 18),
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
                                  padding: const EdgeInsets.only(
                                      left: 18.0, right: 18.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                            padding: const EdgeInsets.only(
                                left: 8.0, right: 8.0, top: 8.0),
                            child: Container(
                              decoration: const BoxDecoration(
                                  color: GREY,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(35),
                                      topRight: Radius.circular(35))),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 18.0, right: 18.0),
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      height: 50,
                                    ),
                                    SizedBox(
                                      height: 80,
                                      child: Row(
                                        children: [
                                          Expanded(
                                              flex: 13,
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                    flex: 1,
                                                    child: Container(
                                                      decoration:
                                                          const BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                              shape: BoxShape
                                                                  .circle),
                                                      child: const Padding(
                                                        padding:
                                                            EdgeInsets.all(3.0),
                                                        child: ImageHelper(
                                                          image:
                                                              'assets/images/AdminProfile.png',
                                                          imageType:
                                                              ImageType.asset,
                                                          imageShape:
                                                              ImageShape.circle,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                      flex: 4,
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                                left: 8.0),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Text(
                                                              'Hi Ujwal,',
                                                              style: GoogleFonts.poppins(
                                                                  fontSize: 18,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  color: Colors
                                                                      .black),
                                                            ),
                                                            Text(
                                                              "Here's your spending dashboard",
                                                              style: GoogleFonts.poppins(
                                                                  fontSize: 18,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  color: Colors
                                                                      .black),
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
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      child: Row(
                                        children: [
                                          Expanded(
                                              flex: 1,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    '\$204.05',
                                                    style: GoogleFonts.poppins(
                                                        fontSize: 38,
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Text(
                                                    'Your Balance',
                                                    style: GoogleFonts.poppins(
                                                        fontSize: 16,
                                                        color: DARKGREY),
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
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        '30',
                                                        style:
                                                            GoogleFonts.poppins(
                                                                fontSize: 38,
                                                                color:
                                                                    Colors.blue,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                      ),
                                                      Text(
                                                        'Last Days',
                                                        style:
                                                            GoogleFonts.poppins(
                                                                fontSize: 16,
                                                                color:
                                                                    DARKGREY),
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                                              itemCount:
                                                  profileScreenModal.length,
                                              itemBuilder: (context, index) {
                                                return InkWell(
                                                  onTap: () {
                                                    Navigator.of(context).push(
                                                        MaterialPageRoute(
                                                            builder:
                                                                (context) =>
                                                                    ProfilePage(
                                                                      imageUrl:
                                                                          profileScreenModal[index]
                                                                              .url,
                                                                      name: profileScreenModal[
                                                                              index]
                                                                          .name,
                                                                      email: profileScreenModal[
                                                                              index]
                                                                          .email,
                                                                    )));
                                                  },
                                                  child: SizedBox(
                                                    width: 90,
                                                    child: Column(
                                                      children: [
                                                        Container(
                                                          height: 65,
                                                          width: 65,
                                                          decoration:
                                                              const BoxDecoration(
                                                            color: Colors.white,
                                                            shape:
                                                                BoxShape.circle,
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(3.0),
                                                            child: ImageHelper(
                                                              image:
                                                                  profileScreenModal[
                                                                          index]
                                                                      .url,
                                                              imageType:
                                                                  ImageType
                                                                      .asset,
                                                              imageShape:
                                                                  ImageShape
                                                                      .circle,
                                                            ),
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                          height: 10,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                                  left: 1,
                                                                  right: 1),
                                                          child: Wrap(
                                                            children: [
                                                              Text(
                                                                profileScreenModal[
                                                                        index]
                                                                    .name,
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: GoogleFonts.poppins(
                                                                    fontSize:
                                                                        14,
                                                                    color:
                                                                        DARKGREY,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              )
                                                            ],
                                                          ),
                                                        )
                                                      ],
                                                    ),
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
                            ),
                          ),
                        )),
                    _foundUsers.isNotEmpty
                        ? SliverList(
                            delegate: SliverChildBuilderDelegate(
                              (context, index) => Padding(
                                key: ValueKey(_foundUsers[index]["id"]),
                                padding: const EdgeInsets.only(
                                    top: 8.0, bottom: 8.0, left: 18, right: 18),
                                child: Container(
                                  height: 120,
                                  decoration: const BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: GREY, width: 2))),
                                  child: Row(
                                    children: [
                                      Expanded(
                                          flex: 4,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Text(
                                                _foundUsers[index]['title']
                                                    .toString(),
                                                style: GoogleFonts.poppins(
                                                    color: Colors.black,
                                                    fontSize: 18),
                                              ),
                                              Text(
                                                _foundUsers[index]['subTitle']
                                                    .toString(),
                                                style: GoogleFonts.poppins(
                                                    color: Colors.black,
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(
                                                width: 300,
                                                child: Text(
                                                  homeScreenModal[index]
                                                      .description,
                                                  style: GoogleFonts.poppins(
                                                      color: DARKGREY,
                                                      fontSize: 18),
                                                  overflow:
                                                      TextOverflow.ellipsis,
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
                                              homeScreenModal[index].price,
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
                              childCount: _foundUsers.length,
                            ),
                          )
                        : SliverToBoxAdapter(
                            child: Center(
                            child: Text(
                              'No data Available',
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          )),
                  ],
                ),
              ),
            ),
          );
  }
}
