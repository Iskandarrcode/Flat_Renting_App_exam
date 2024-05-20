import 'package:flut_renting_app/atboards/screens/property_details_screen/property_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

// ignore: must_be_immutable
class HomeContainer extends StatefulWidget {
  late String image;
  late String text1;
  late String text2;
  late String text3;
  late String text4;
  late String text5;
  late String text6;

  HomeContainer(
      {super.key,
      required this.image,
      required this.text1,
      required this.text2,
      required this.text3,
      required this.text4,
      required this.text5,
      required this.text6});

  @override
  State<HomeContainer> createState() => _HomeContainerState();
}

class _HomeContainerState extends State<HomeContainer> {
  bool favorid = true;
  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      onTap: () {
        setState(() {
          Navigator.pushReplacement(context, MaterialPageRoute(
            builder: (context) {
              return const PropertyScreen();
            },
          ));
        });
      },
      child: Container(
        width: 316.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: const Color(0xffFFFFFF),
        ),
        child: Row(
          children: [
            Container(
              width: 108.w,
              height: 200.h,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16),
                ),
                image: DecorationImage(
                  image: AssetImage(widget.image),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Gap(16.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.star_purple500_outlined,
                      color: const Color(0xffFFBF75),
                      size: 18.sp,
                    ),
                    Text(
                      widget.text1,
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      widget.text2,
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: const Color(0xff7D7F88),
                      ),
                    ),
                  ],
                ),
                Gap(8.h),
                SizedBox(
                  width: 164.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.text3,
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        widget.text4,
                        style: TextStyle(
                          fontSize: 13.sp,
                          color: const Color(0xff7D7F88),
                        ),
                      ),
                    ],
                  ),
                ),
                Gap(14.h),
                Row(
                  children: [
                    SizedBox(
                      width: 14.w,
                      height: 14.h,
                      child: SvgPicture.asset("assets/icons/home_icons/5.svg"),
                    ),
                    Text(
                      "  2 room",
                      style: TextStyle(
                        fontSize: 13.sp,
                        color: const Color(0xff7D7F88),
                      ),
                    ),
                    Gap(15.w),
                    SizedBox(
                      width: 14.w,
                      height: 14.h,
                      child: SvgPicture.asset("assets/icons/home_icons/6.svg"),
                    ),
                    Text(
                      widget.text5,
                      style: TextStyle(
                        fontSize: 13.sp,
                        color: const Color(0xff7D7F88),
                      ),
                    ),
                  ],
                ),
                Gap(18.h),
                Row(
                  children: [
                    Text(
                      widget.text6,
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "/month",
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: const Color(0xff7D7F88),
                      ),
                    ),
                    Gap(70.w),
                    ZoomTapAnimation(
                      onTap: () {
                        favorid = !favorid;
                        setState(() {});
                      },
                      child: SizedBox(
                        width: 18.w,
                        height: 18.h,
                        child: favorid
                            ? Icon(
                                Icons.favorite_border,
                                size: 20.sp,
                              )
                            : Icon(
                                Icons.favorite,
                                size: 20.sp,
                                color: Colors.red,
                              ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
