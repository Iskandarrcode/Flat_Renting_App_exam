import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Button1 extends StatefulWidget {
  final String textButton;
  final Color colorButton;
  final Color colorText;

  const Button1(
      {super.key,
      required this.textButton,
      required this.colorButton,
      required this.colorText});

  @override
  State<Button1> createState() => _Button1State();
}

class _Button1State extends State<Button1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.w,
      decoration: BoxDecoration(
        color: widget.colorButton,
        borderRadius: BorderRadius.circular(30.r),
        border: Border.all(
          color: const Color(0xffE3E3E7),
        ),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            widget.textButton,
            style: TextStyle(
              color: widget.colorText,
              fontSize: 16.sp,
            ),
          ),
        ),
      ),
    );
  }
}
