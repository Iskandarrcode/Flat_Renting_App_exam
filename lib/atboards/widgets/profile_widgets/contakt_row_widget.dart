import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

// ignore: must_be_immutable
class UserRowContainer extends StatelessWidget {
  String icon;
  String text;
 UserRowContainer({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 343.w,
      child: Row(
        children: [
          SizedBox(
            width: 60.w,
            height: 60.h,
            child: SvgPicture.asset(icon),
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          Icon(
            Icons.arrow_forward_ios_outlined,
            color: const Color(0xff7D7F88),
            size: 18.sp,
          ),
        ],
      ),
    );
  }
}
