import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

// ignore: must_be_immutable
class HomeContainer2 extends StatelessWidget {
  String image1;
  String text1;
  String text2;
  HomeContainer2(
      {super.key,
      required this.image1,
      required this.text1,
      required this.text2});

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      child: Container(
        width: 155.w,
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
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                image: DecorationImage(
                  image: AssetImage(image1),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Gap(16.h),
            SizedBox(
              width: 1.sw,
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text1,
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      text2,
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
