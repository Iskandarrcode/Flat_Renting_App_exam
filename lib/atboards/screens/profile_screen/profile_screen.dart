import 'package:flut_renting_app/atboards/widgets/profile_widgets/contakt_row_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Gap(50.h),
            Center(
              child: SizedBox(
                width: 171.w,
                child: Column(
                  children: [
                    SizedBox(
                      width: 90.w,
                      height: 90.h,
                      child: Image.asset(
                        "assets/images/profile_images/1.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      "Lucy Bond",
                      style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "lucybond08@gmail.com",
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: const Color(0xff7D7F88),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Gap(40.h),
            Container(
              width: 1.sw,
              height: 1.h,
              decoration: const BoxDecoration(
                color: Color(0xffD6D6D6),
              ),
            ),
            Gap(40.h),
            UserRowContainer(
              icon: "assets/icons/profile_icons/1.svg",
              text: "Personal details",
            ),
            UserRowContainer(
              icon: "assets/icons/profile_icons/2.svg",
              text: "Settings",
            ),
            UserRowContainer(
              icon: "assets/icons/profile_icons/3.svg",
              text: "Payment details",
            ),
            UserRowContainer(
              icon: "assets/icons/profile_icons/4.svg",
              text: "FAQ",
            ),
            Gap(20.h),
            Container(
              width: 1.sw,
              height: 1.h,
              decoration: const BoxDecoration(
                color: Color(0xffD6D6D6),
              ),
            ),
            Gap(20.h),
            UserRowContainer(
              icon: "assets/icons/profile_icons/5.svg",
              text: "Switch to hosting",
            ),
          ],
        ),
      ),
    );
  }
}
