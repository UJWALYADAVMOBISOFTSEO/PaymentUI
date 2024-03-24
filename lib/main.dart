import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'Screens/BottomTab.dart';
import 'Screens/ShimmerEffects/ShimmerEffectScreen.dart';

void main() {
  runApp(const MyApp());
}

///PLEASE NOTE
///Every Thing Is Modal Based
///In Application i have used Sliver Only
///Application is Smooth As UserExperience
///Page Navigation Is Shimmer Based
///patters not followed As Api Call Was noot There Every Thing is managed by Modal(POJO)

///Navigation
///Tab Navigation
/// 1- HomePage
/// 2- Yet To Implement As It was Scanner
/// 3- Payment SuccessPage
/// 4- User Profile Page

///Navigation is Set From Home Page Also
/// HomePage - on Send Again i.e Actors Profile You Will Redirect to Profile page with dynamic Data
/// ProfilePage - on click of payment preference and Automatic payment You Will Redirect to payment Success Page
/// paymentSuccessPage - Dynamic Data will be display on click of cancel payment You will Redirect to Home page
/// InOverall Project Poppins Font Is Used

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      ///This Is To Make Application Responsive
      builder: (context, child) => ResponsiveWrapper.builder(
        child,
        maxWidth: 1200,
        minWidth: 480,
        defaultScale: true,
        breakpoints: [
          const ResponsiveBreakpoint.resize(480, name: MOBILE),
          const ResponsiveBreakpoint.autoScale(800, name: TABLET),
          const ResponsiveBreakpoint.resize(1000, name: DESKTOP),
          const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
          const ResponsiveBreakpoint.autoScale(2460, name: '4K'),
        ],
        background: Container(color: Colors.white),
      ),
      ///First Widget Which Will Render On Screen
      home: const BottomTabScreen(),
    );
  }
}
