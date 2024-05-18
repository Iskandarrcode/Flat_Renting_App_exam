import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class TextFields extends StatelessWidget {
  final TextEditingController textEditingController;
  String errorMessage;
  String textField;
  IconData iconField;
  Color iconColor;

  TextFields(
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
        prefixIcon: Icon(
          iconField,
          color: iconColor,
          size: 20.sp,
        ),
        label: Text(
          textField,
          style: TextStyle(fontSize: 14.sp),
        ),
        errorText: errorMessage.isEmpty ? null : errorMessage,
      ),
    );
  }
}
