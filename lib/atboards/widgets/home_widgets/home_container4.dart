import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class HomeContainer4 extends StatelessWidget {
  const HomeContainer4({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.w,
      height: 199.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xff917AFD),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            width: 220.w,
            height: 199.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Want to hos\nyour own place?",
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xffFFFFFF),
                  ),
                ),
                Gap(8.h),
                Text(
                  "Earn passive income by renting\nor selling your properties!",
                  style: TextStyle(
                    fontSize: 13.sp,
                    color: const Color(0xffFFFFFF),
                  ),
                ),
                Gap(20.h),
                ZoomTapAnimation(
                  child: Container(
                    width: 130.w,
                    height: 34.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(49),
                      color: const Color(0xffFDFDFD),
                    ),
                    child: Center(
                      child: Text(
                        "Become a host",
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: const Color(0xff917AFD),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            width: 121.5.w,
            height: 199.h,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              image: DecorationImage(
                image: AssetImage("assets/images/home_images/1-c4.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
