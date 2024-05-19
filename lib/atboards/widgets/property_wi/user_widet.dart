import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class UserRow extends StatelessWidget {
  const UserRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.w,
      height: 42.h,
      child: Row(
        children: [
          Container(
            width: 42.w,
            height: 42.h,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/property_images/3.png"),
              ),
            ),
          ),
          Gap(10.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Louise Vuitton",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xff1A1E25),
                ),
              ),
              Text(
                "Property owner",
                style: TextStyle(
                  fontSize: 14.sp,
                  color: const Color(0xff7D7F88),
                ),
              ),
            ],
          ),
          const Spacer(),
          ZoomTapAnimation(
            child: SizedBox(
              width: 55.w,
              height: 55.h,
              child: SvgPicture.asset(
                "assets/icons/property_icons/8.svg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          ZoomTapAnimation(
            child: SizedBox(
              width: 55.w,
              height: 55.h,
              child: SvgPicture.asset(
                "assets/icons/property_icons/9.svg",
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}
