import 'dart:ui';

import 'package:flut_renting_app/atboards/screens/chat_screen/chat_screen.dart';
import 'package:flut_renting_app/atboards/screens/explore_screen/explore_screen.dart';
import 'package:flut_renting_app/atboards/screens/home_screen/home_screen.dart';
import 'package:flut_renting_app/atboards/screens/saved_screen/saved_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class HomeController extends StatefulWidget {
  const HomeController({super.key});

  @override
  State<HomeController> createState() => _HomeControllerState();
}

class _HomeControllerState extends State<HomeController> {
  String image1 = "assets/icons/bottom_navigation_bar_icons/1.png";
  String image2 = "assets/icons/bottom_navigation_bar_icons/2.png";
  String image3 = "assets/icons/bottom_navigation_bar_icons/3.png";
  String image4 = "assets/icons/bottom_navigation_bar_icons/4.png";
  String image5 = "assets/icons/bottom_navigation_bar_icons/5.png";

  String image1_1 = "assets/icons/bottom_navigation_bar_icons/1_1.png";
  String image2_2 = "assets/icons/bottom_navigation_bar_icons/2_2.png";
  String image3_3 = "assets/icons/bottom_navigation_bar_icons/3_3.png";
  String image4_4 = "assets/icons/bottom_navigation_bar_icons/4_4.png";
  String image5_5 = "assets/icons/bottom_navigation_bar_icons/5_5.png";

  int currentIndex = 0;

  List<Widget> screens = [
    const HomeScreen(),
    const ExploreScreen(),
    const ChatScreen(),
    const SavedScreen(),
    const SavedScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(10),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            width: 80,
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ZoomTapAnimation(
                    onTap: () {
                      setState(() {
                        currentIndex = 0;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      width: 32.w,
                      height: 37.h,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image:
                              AssetImage(currentIndex == 0 ? image1_1 : image1),
                        ),
                      ),
                    ),
                  ),
                  ZoomTapAnimation(
                    onTap: () {
                      setState(() {
                        currentIndex = 1;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      width: 33.w,
                      height: 42.h,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image:
                              AssetImage(currentIndex == 1 ? image2_2 : image2),
                        ),
                      ),
                    ),
                  ),
                  ZoomTapAnimation(
                    onTap: () {
                      setState(() {
                        currentIndex = 2;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      width: 32.w,
                      height: 37.h,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image:
                              AssetImage(currentIndex == 2 ? image3_3 : image3),
                        ),
                      ),
                    ),
                  ),
                  ZoomTapAnimation(
                    onTap: () {
                      setState(() {
                        currentIndex = 3;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      width: 32.w,
                      height: 37.h,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image:
                              AssetImage(currentIndex == 3 ? image4_4 : image4),
                        ),
                      ),
                    ),
                  ),
                  ZoomTapAnimation(
                    onTap: () {
                      setState(() {
                        currentIndex = 4;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      width: 32.w,
                      height: 37.h,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image:
                              AssetImage(currentIndex == 4 ? image5_5 : image5),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
