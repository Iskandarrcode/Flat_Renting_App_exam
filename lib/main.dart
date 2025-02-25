import 'package:device_preview/device_preview.dart';
import 'package:flut_renting_app/atboards/screens/onboardings/onboarding1.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(
    // DevicePreview(
    //   enabled: kReleaseMode,
    //   builder: (context) => const MyApp(), // Wrap your app
    // ),
    const MyApp(),
  );
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
          // builder: DevicePreview.appBuilder,
          debugShowCheckedModeBanner: false,
          home: Onboarding1Screen(),
        );
      },
    );
  }
}
