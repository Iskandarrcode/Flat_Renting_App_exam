import 'package:flut_renting_app/atboards/widgets/home_widgets/container2_home.dart';
import 'package:flut_renting_app/atboards/widgets/home_widgets/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(10.h),
              SearchWidget(
                textField: "Search address, city, location",
                iconField: "assets/icons/home_icons/3.svg",
                iconBack: true,
              ),
              Gap(36.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Find out your next trip!",
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
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
              Row(
                children: [
                  HomeContainer2(
                    text1: "Bali, Indonesia",
                    text2: "345 rented props",
                    image1: "assets/images/explore_images/1.jpeg",
                  ),
                  const Spacer(),
                  HomeContainer2(
                    text1: "Yogyakarta, Ind...",
                    text2: "290 rented props",
                    image1: "assets/images/explore_images/2.jpeg",
                  ),
                ],
              ),
              Gap(20.h),
              Text(
                "Exploring about your living style?",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Gap(20.h),
              Row(
                children: [
                  HomeContainer2(
                    text1: "Outdoor living",
                    text2: "",
                    image1: "assets/images/explore_images/3.jpeg",
                  ),
                  const Spacer(),
                  HomeContainer2(
                    text1: "Japanese housing",
                    text2: "",
                    image1: "assets/images/explore_images/4.jpeg",
                  ),
                ],
              ),
              Gap(20.h),
              Text(
                "Want to discover other experiences?",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Gap(20.h),
              Row(
                children: [
                  HomeContainer2(
                    text1: "Learn other culture",
                    text2: "",
                    image1: "assets/images/explore_images/5.jpeg",
                  ),
                  const Spacer(),
                  HomeContainer2(
                    text1: "Online events",
                    text2: "",
                    image1: "assets/images/explore_images/6.jpeg",
                  ),
                ],
              ),
              Gap(50.h),
            ],
          ),
        ),
      ),
    );
  }
}
