import 'package:flutter/material.dart';
import 'package:paymentapptask/Global/colors.dart';
import 'package:shimmer/shimmer.dart';

class LoadingListPageProfile extends StatefulWidget {
  @override
  _LoadingListPageProfileState createState() => _LoadingListPageProfileState();
}

class _LoadingListPageProfileState extends State<LoadingListPageProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 10,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Shimmer.fromColors(
                baseColor: GREY,
                highlightColor: Colors.grey,
                enabled: true,
                child: Column(
                  children: [
                    Container(
                      height: 300,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 50,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 50,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 50,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 50,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 50,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 50,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 50,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 50,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 50,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 50,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 50,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 50,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 50,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 50,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
