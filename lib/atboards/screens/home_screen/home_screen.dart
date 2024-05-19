import 'package:flut_renting_app/atboards/widgets/home_widgets/container2_home.dart';
import 'package:flut_renting_app/atboards/widgets/home_widgets/container_home.dart';
import 'package:flut_renting_app/atboards/widgets/home_widgets/float_action_button.dart';
import 'package:flut_renting_app/atboards/widgets/home_widgets/home_container3.dart';
import 'package:flut_renting_app/atboards/widgets/home_widgets/home_container4.dart';
import 'package:flut_renting_app/atboards/widgets/home_widgets/search_widget.dart';
import 'package:flut_renting_app/atboards/widgets/home_widgets/top_sectio.dart';
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
              const TopSection(),
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
              Gap(20.h),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    HomeContainer(
                      image: "assets/images/home_images/1.png",
                      text1: " 4.8 ",
                      text2: "(73)",
                      text3: "Entire Bromo mountain view Cabin in Surabaya",
                      text4: "Malang, Probolinggo",
                      text5: "  673 m2",
                      text6: "\$526",
                    ),
                    Gap(20.w),
                    HomeContainer(
                      image: "assets/images/home_images/2.jpeg",
                      text1: " 4.8 ",
                      text2: "(73)",
                      text3: "Entire Bromo mountain view Cabin in Surabaya",
                      text4: "Malang, Probolinggo",
                      text5: "  673 m2",
                      text6: "\$526",
                    ),
                    Gap(20.w),
                    HomeContainer(
                      image: "assets/images/home_images/2.png",
                      text1: " 4.8 ",
                      text2: "(73)",
                      text3: "Entire Bromo mountain view Cabin in Surabaya",
                      text4: "Malang, Probolinggo",
                      text5: "  673 m2",
                      text6: "\$526",
                    ),
                  ],
                ),
              ),
              Gap(36.w),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Top eated in Surabaya",
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
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
              Gap(20.h),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    HomeContainer(
                      image: "assets/images/home_images/2.png",
                      text1: " 4.9 ",
                      text2: "(73)",
                      text3: "Entire private villa in Surabaya City",
                      text4: "Harapan Raya, Surabaya",
                      text5: "  488 m2",
                      text6: "\$400",
                    ),
                    Gap(20.w),
                    HomeContainer(
                      image: "assets/images/home_images/1.png",
                      text1: " 4.8 ",
                      text2: "(73)",
                      text3: "Entire Bromo mountain view Cabin in Surabaya",
                      text4: "Malang, Probolinggo",
                      text5: "  673 m2",
                      text6: "\$526",
                    ),
                    Gap(20.w),
                    HomeContainer(
                      image: "assets/images/home_images/2.jpeg",
                      text1: " 4.8 ",
                      text2: "(73)",
                      text3: "Entire Bromo mountain view Cabin in Surabaya",
                      text4: "Malang, Probolinggo",
                      text5: "  673 m2",
                      text6: "\$526",
                    ),
                  ],
                ),
              ),
              Gap(36.sp),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Find out next trip!",
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
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
              Gap(20.h),
              const Row(
                children: [
                  HomeContainer2(),
                  Spacer(),
                  HomeContainer2(),
                ],
              ),
              Gap(36.h),
              Text(
                "Travel tips for you!",
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xff1A1E25),
                ),
              ),
              Gap(20.h),
              HomeContainer3(
                image: "assets/images/home_images/1_c3.png",
                text1: "Learn more about Surabaya’s\nEcosystem in 2022",
              ),
              Gap(20.h),
              HomeContainer3(
                image: "assets/images/home_images/2_c3.png",
                text1:
                    "8 things you need to know to\nlive in Surabaya, Indonesia!",
              ),
              Gap(32.h),
              ZoomTapAnimation(
                child: Container(
                  width: 343.w,
                  height: 48.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(54),
                    color: const Color(0xff917AFD).withOpacity(0.07),
                  ),
                  child: Center(
                    child: Text(
                      "Read more articles",
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: const Color(0xff917AFD),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Gap(36.h),
              const HomeContainer4(),
              Gap(100.h),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: ActionButton(page: 1),
    );
  }
}
