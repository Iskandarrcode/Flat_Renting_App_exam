import 'package:flut_renting_app/atboards/screens/checkout_screen/checkout_screen.dart';
import 'package:flut_renting_app/atboards/screens/home_screen/home_screen.dart';
import 'package:flut_renting_app/atboards/screens/log_in_screen/login_screen.dart';
import 'package:flut_renting_app/atboards/screens/onboardings/onboarding1.dart';
import 'package:flut_renting_app/atboards/screens/property_details_screen/property_screen.dart';
import 'package:flut_renting_app/atboards/screens/sign_up_screen/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Onboarding1Screen(),
        );
      },
    );
  }
}
