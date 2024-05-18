import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

// ignore: must_be_immutable
class SearchWidget extends StatelessWidget {
  String textField;
  String iconField;
  bool iconBack = true;

  SearchWidget(
      {super.key,
      required this.textField,
      required this.iconField,
      required this.iconBack});
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 10),
        fillColor: const Color(0xffF1F1FE),
        filled: true,
        prefixIcon: Container(
          padding: const EdgeInsets.all(13),
          width: 22.w,
          height: 22.h,
          child: SvgPicture.asset(iconField),
        ),
        suffixIcon: iconBack
            ? ZoomTapAnimation(
                child: Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Container(
                    padding: const EdgeInsets.all(2),
                    width: 22.w,
                    height: 22.h,
                    child: SvgPicture.asset("assets/icons/home_icons/4.svg"),
                  ),
                ),
              )
            : const Text(""),
        label: Row(
          children: [
            Text(
              textField,
              style: TextStyle(fontSize: 14.sp),
            ),
          ],
        ),
      ),
    );
  }
}
