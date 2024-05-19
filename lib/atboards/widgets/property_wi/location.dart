import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class Locations extends StatelessWidget {
  String icon;
  String text1;
  String text2;
 Locations({super.key, required this.icon, required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SvgPicture.asset(icon),
            Gap(10.w),
            Text(
              text1,
              style: TextStyle(
                fontSize: 16.sp,
                color: const Color(0xff222831),
              ),
            ),
          ],
        ),
        Gap(8.h),
        Text(
          text2,
          style: TextStyle(
            fontSize: 16.sp,
            color: const Color(0xff7D7F88),
          ),
        ),
      ],
    );
  }
}
