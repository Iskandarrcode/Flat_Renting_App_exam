import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

// ignore: must_be_immutable
class ChatUsers extends StatelessWidget {
  String text1;
  String text2;
  String text3;
  String imageUser;

  bool icon;
  ChatUsers(
      {super.key,
      required this.text1,
      required this.text2,
      required this.text3,
      required this.imageUser,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        children: [
          Container(
            width: 45.w,
            height: 45.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imageUser),
              ),
            ),
          ),
          Gap(9.w),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(7),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          fontSize: 12.sp,
                          color: const Color(0xff7D7F88),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          text3,
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: const Color(0xff7D7F88),
                          ),
                        ),
                      ),
                      Container(
                        width: 18.w,
                        height: 20.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: icon
                              ? const Color(0xff917AFD)
                              : const Color(0xffFFFFFF),
                        ),
                        child: Center(
                          child: Text(
                            "2",
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
