import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class Button2 extends StatefulWidget {
  final Color buttonColor;
  final Color textColor;
  final String text;
  final String iconButton;
  const Button2(
      {super.key,
      required this.text,
      required this.textColor,
      required this.buttonColor,
      required this.iconButton});

  @override
  State<Button2> createState() => _Button2State();
}

class _Button2State extends State<Button2> {
  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      child: Container(
        padding: const EdgeInsets.all(5),
        width: 343.w,
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xffE2E8F0)),
          borderRadius: BorderRadius.circular(103),
          color: widget.buttonColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(5),
              child: SizedBox(
                width: 24.w,
                height: 24.h,
                child: SvgPicture.asset(widget.iconButton),
              ),
            ),
            Gap(80.w),
            Text(
              widget.text,
              style: TextStyle(fontSize: 16.sp, color: widget.textColor),
            ),
          ],
        ),
      ),
    );
  }
}
