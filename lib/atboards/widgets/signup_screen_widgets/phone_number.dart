import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

// ignore: must_be_immutable
class PhoneNumber extends StatelessWidget {
  final TextEditingController textEditingController;
  String errorMessage;
  String textField;
  IconData iconField;
  Color iconColor;

  PhoneNumber(
      {super.key,
      required this.textEditingController,
      required this.errorMessage,
      required this.textField,
      required this.iconField,
      required this.iconColor});
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(84),
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 10),
        fillColor: const Color(0xffF1F1FE),
        filled: true,
        errorStyle: const TextStyle(color: Colors.red),
        prefixIcon: Container(
          padding: const EdgeInsets.all(13),
          width: 10.w,
          height: 10.h,
          child: SvgPicture.asset("assets/icons/login_icons/3.svg"),
        ),
        label: Row(
          children: [
            SvgPicture.asset("assets/icons/login_icons/4.svg"),
            Gap(2.w),
            Text(
              textField,
              style: TextStyle(fontSize: 14.sp),
            ),
          ],
        ),
        errorText: errorMessage.isEmpty ? null : errorMessage,
      ),
    );
  }
}
