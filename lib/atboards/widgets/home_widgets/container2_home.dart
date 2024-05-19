import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class HomeContainer2 extends StatelessWidget {
  const HomeContainer2({super.key});

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      child: Container(
        width: 162.w,
        height: 235.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xffFFFFFF),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 162.w,
              height: 160.h,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                image: DecorationImage(
                  image: AssetImage("assets/images/home_images/1.jpeg"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Gap(16.h),
            SizedBox(
              width: 1.sw,
              height: 55.h,
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Bali, Indonesia",
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "345 rented props",
                      style: TextStyle(
                        fontSize: 13.sp,
                        color: const Color(0xff7D7F88),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
