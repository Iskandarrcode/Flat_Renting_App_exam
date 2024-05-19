import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

// ignore: must_be_immutable
class HomeContainer3 extends StatefulWidget {
  late String image;
  late String text1;

   HomeContainer3({super.key, required this.image, required this.text1});

  @override
  State<HomeContainer3> createState() => _HomeContainer3State();
}

class _HomeContainer3State extends State<HomeContainer3> {
  bool favorid = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.w,
      height: 300.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 1.sw,
            height: 98.h,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              image: DecorationImage(
                image: AssetImage(widget.image),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Gap(16.h),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Saturday, November 10,2021",
                  style: TextStyle(
                    fontSize: 13.sp,
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
                            size: 22.sp,
                          )
                        : Icon(
                            Icons.favorite,
                            size: 22.sp,
                            color: Colors.red,
                          ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 8),
            child: Text(
              widget.text1,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 10),
            child: Text(
              "Surabaya as the second largest city in\nIndonesia has very high dynamics of land...",
              style: TextStyle(
                fontSize: 16.sp,
                color: const Color(0xff464646),
              ),
            ),
          ),
          Gap(24.h),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: ZoomTapAnimation(
              child: Container(
                width: 106.w,
                height: 33.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  color: const Color(0xff917AFD).withOpacity(0.1),
                ),
                child: Center(
                  child: Text(
                    "Read more",
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: const Color(0xff917AFD),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
