import 'package:flut_renting_app/atboards/widgets/home_widgets/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Find your place in",
              style: TextStyle(
                fontSize: 14.sp,
                color: const Color(0xff7D7F88),
              ),
            ),
            Gap(5.h),
            Row(
              children: [
                SvgPicture.asset("assets/icons/home_icons/1.svg"),
                Text(
                  "  Surabaya, Indonesia  ",
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SvgPicture.asset("assets/icons/login_icons/4.svg"),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchWidget(
                textField: "Search address, city,location",
                iconField: "assets/icons/home_icons/3.svg",
                iconBack: true,
              ),
              Gap(36.h),
              Text(
                "What do you need?",
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xff1A1E25),
                ),
              ),
              Gap(20.h),
              


              Gap(36.h),
              Text(
                "Near your lacation",
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xff1A1E25),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "243 Properties in Surabaya",
                    style: TextStyle(
                      fontSize: 13.sp,
                      color: const Color(0xff1A1E25),
                    ),
                  ),
                  ZoomTapAnimation(
                    child: Text(
                      "See all",
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: const Color(0xff917AFD),
                      ),
                    ),
                  ),
                ],
              ),


            ],
          ),
        ),
      ),
    );
  }
}
