import 'dart:ui';

import 'package:flut_renting_app/atboards/screens/chat_screen/chat_screen.dart';
import 'package:flut_renting_app/atboards/screens/explore_screen/explore_screen.dart';
import 'package:flut_renting_app/atboards/screens/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

// ignore: must_be_immutable
class ActionButton extends StatefulWidget {
  late int page;
  ActionButton({super.key, required this.page});

  @override
  State<ActionButton> createState() => _ActionButtonState();
}

class _ActionButtonState extends State<ActionButton> {
  bool check = false;
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

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 14, right: 14, top: 5),
      clipBehavior: Clip.hardEdge,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ZoomTapAnimation(
                onTap: () {
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const HomeScreen();
                      },
                    ));
                  });
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  width: 32.w,
                  height: 37.h,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(widget.page == 1 ? image1_1 : image1),
                    ),
                  ),
                ),
              ),
              ZoomTapAnimation(
                onTap: () {
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const ExploreScreen();
                      },
                    ));
                  });
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  width: 33.w,
                  height: 42.h,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(widget.page == 2 ? image2_2 : image2),
                    ),
                  ),
                ),
              ),
              ZoomTapAnimation(
                onTap: () {
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const ChatScreen();
                      },
                    ));
                  });
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  width: 32.w,
                  height: 37.h,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(widget.page == 3 ? image3_3 : image3),
                    ),
                  ),
                ),
              ),
              ZoomTapAnimation(
                onTap: () {
                  setState(() {
                    // Navigator.push(context, MaterialPageRoute(
                    //   builder: (context) {
                    //     return Placeholder();
                    //   },
                    // ));
                  });
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  width: 32.w,
                  height: 37.h,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(widget.page == 4 ? image4_4 : image4),
                    ),
                  ),
                ),
              ),
              ZoomTapAnimation(
                onTap: () {
                  setState(() {
                    // Navigator.push(context, MaterialPageRoute(
                    //   builder: (context) {
                    //     return Placeholder();
                    //   },
                    // ));
                  });
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  width: 32.w,
                  height: 37.h,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(widget.page == 5 ? image5_5 : image5),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
