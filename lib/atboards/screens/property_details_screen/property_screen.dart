import 'package:flut_renting_app/atboards/screens/checkout_screen/checkout_screen.dart';
import 'package:flut_renting_app/atboards/screens/home_screen/home_screen.dart';
import 'package:flut_renting_app/atboards/widgets/property_wi/location.dart';
import 'package:flut_renting_app/atboards/widgets/property_wi/user_widet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class PropertyScreen extends StatefulWidget {
  const PropertyScreen({super.key});

  @override
  State<PropertyScreen> createState() => _PropertyScreenState();
}

class _PropertyScreenState extends State<PropertyScreen> {
  bool favorid = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 1.sw,
              height: 269.h,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/property_images/1.png"),
                  fit: BoxFit.fill,
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                      top: 40,
                      left: 16,
                      child: Row(
                        children: [
                          ZoomTapAnimation(
                            onTap: () {
                              setState(() {
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(
                                  builder: (context) {
                                    return const HomeScreen();
                                  },
                                ));
                              });
                            },
                            child: Container(
                              width: 40.w,
                              height: 42.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.white,
                              ),
                              child: Icon(
                                Icons.arrow_back_ios_new_outlined,
                                size: 20.sp,
                              ),
                            ),
                          ),
                          Gap(263.w),
                          ZoomTapAnimation(
                            child: Container(
                              width: 40.w,
                              height: 42.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.white,
                              ),
                              child: Icon(
                                Icons.south_america_rounded,
                                size: 20.sp,
                              ),
                            ),
                          )
                        ],
                      )),
                  Positioned(
                    top: 90,
                    left: 147,
                    child: ZoomTapAnimation(
                      child: Container(
                        width: 60.w,
                        height: 60.h,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/images/property_images/2.png"),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Gap(18.h),
            ZoomTapAnimation(
              child: Container(
                width: 343.w,
                height: 48.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(54),
                  color: const Color(0xff917AFD).withOpacity(0.07),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset("assets/icons/property_icons/3.svg"),
                      Text(
                        "  Watch 360°",
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: const Color(0xff917AFD),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Gap(6.h),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Text(
                    "Entire Bromo mountain\nview Cabin in Surabaya",
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Gap(120.w),
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
                              size: 23.sp,
                            )
                          : Icon(
                              Icons.favorite,
                              size: 23.sp,
                              color: Colors.red,
                            ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 343.w,
              height: 55.h,
              child: Column(
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
                        " 4.8 ",
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "(73 reiews)",
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: const Color(0xff7D7F88),
                        ),
                      ),
                      Gap(113.w),
                      Icon(
                        Icons.remove_from_queue_outlined,
                        size: 16.sp,
                        color: const Color(0xff7D7F88),
                      ),
                      Text(
                        "  2 room  ",
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: const Color(0xff7D7F88),
                        ),
                      ),
                    ],
                  ),
                  Gap(10.h),
                  Row(
                    children: [
                      Icon(
                        Icons.room,
                        size: 18.sp,
                        color: const Color(0xff7D7F88),
                      ),
                      Text(
                        "  Malang, Probolinggo   ",
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: const Color(0xff7D7F88),
                        ),
                      ),
                      Gap(61.w),
                      Icon(
                        Icons.home_rounded,
                        size: 16.sp,
                        color: const Color(0xff7D7F88),
                      ),
                      Text(
                        "  874 m2  ",
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: const Color(0xff7D7F88),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Gap(28.h),
            Container(
              width: 1.sw,
              height: 1.h,
              color: const Color(0xffD6D6D6),
            ),
            Gap(28.h),
            const UserRow(),
            Gap(20.h),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Home facilities",
                    style: TextStyle(
                      fontSize: 13.sp,
                      color: const Color(0xff1A1E25),
                    ),
                  ),
                  ZoomTapAnimation(
                    child: Text(
                      "See all facilities",
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: const Color(0xff917AFD),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Gap(4.h),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset("assets/icons/property_icons/10.svg"),
                      Gap(10.w),
                      const Text("Air conditioner"),
                    ],
                  ),
                  Gap(20.h),
                  Row(
                    children: [
                      SvgPicture.asset("assets/icons/property_icons/11.svg"),
                      Gap(10.w),
                      const Text("Kitchen"),
                    ],
                  ),
                  Gap(20.h),
                  Row(
                    children: [
                      SvgPicture.asset("assets/icons/property_icons/12.svg"),
                      Gap(10.w),
                      const Text("Free parking"),
                    ],
                  ),
                  Gap(20.h),
                  Row(
                    children: [
                      SvgPicture.asset("assets/icons/property_icons/13.svg"),
                      Gap(10.w),
                      const Text("Free WIFI"),
                    ],
                  ),
                  Gap(40.h),
                  Container(
                    width: 1.sw,
                    height: 209.h,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image:
                            AssetImage("assets/images/property_images/4.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Gap(24.h),
                  Text(
                    "Nearest public facilities",
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xff1A1E25),
                    ),
                  ),
                  Gap(24.h),
                  Row(
                    children: [
                      Locations(
                        icon: "assets/icons/property_icons/14.svg",
                        text1: "Minimarket",
                        text2: "200m",
                      ),
                      Gap(64.w),
                      Locations(
                        icon: "assets/icons/property_icons/15.svg",
                        text1: "Hospital",
                        text2: "130m",
                      ),
                    ],
                  ),
                  Gap(48.h),
                  Row(
                    children: [
                      Locations(
                        icon: "assets/icons/property_icons/16.svg",
                        text1: "Public canteen",
                        text2: "400m",
                      ),
                      Gap(38.w),
                      Locations(
                        icon: "assets/icons/property_icons/17.svg",
                        text1: "Train satation",
                        text2: "500m",
                      ),
                    ],
                  ),
                  Gap(40.h),
                  SizedBox(
                    width: 1.sw,
                    height: 278.h,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "About location’s neighborhood",
                          style: TextStyle(
                            fontSize: 18.sp,
                            color: const Color(0xff1A1E25),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Gap(20.h),
                        Text(
                          """This cabin comes with Smart Home System and beautiful viking style. You can see sunrise in the morning with City View from full Glass Window.

This unit is surrounded by business district of West Surabaya that offers you the city life as well as wide range of culinary.

This apartment equipped with Washing Machine, Electric Stove, Microwave, Refrigerator, Cutlery.""",
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: const Color(0xff7D7F88),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Gap(32.h),
                  ZoomTapAnimation(
                    child: Container(
                      width: 343.w,
                      height: 48.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(54),
                        border: Border.all(
                          color: const Color(0xff7D7F88),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Average living cost",
                              style: TextStyle(
                                fontSize: 16.sp,
                                color: const Color(0xff7D7F88),
                              ),
                            ),
                            Text(
                              "500\$/month",
                              style: TextStyle(
                                fontSize: 16.sp,
                                color: const Color(0xff1A1E25),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Gap(40.h),
                  Text(
                    "Testimonials",
                    style: TextStyle(
                      fontSize: 18.sp,
                      color: const Color(0xff1A1E25),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Gap(20.h),
                  SizedBox(
                    width: 1.sw,
                    height: 220.h,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 42.w,
                              height: 42.h,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/property_images/3.png"),
                                ),
                              ),
                            ),
                            Gap(10.w),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Louise Vuitton",
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xff1A1E25),
                                  ),
                                ),
                                Row(
                                  children: [
                                    for (int i = 0; i < 5; i++)
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange,
                                        size: 20.sp,
                                      ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Gap(17.h),
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text:
                                    "My wife and I had a dream of downsizing from our house in Cape Elizabeth into a small condo closer to where we work and play in Portland. David and his skilled team helped make that dream a reality. The sale went smoothly, and we just closed on an ideal new place we're excited to call home...",
                                style: TextStyle(
                                  color: Color(0xff7D7F88),
                                ),
                              ),
                              TextSpan(
                                text: "Read more",
                                style: TextStyle(
                                  color: Color(0xff917AFD),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 1.sw,
                    height: 220.h,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 42.w,
                              height: 42.h,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/property_images/5.png"),
                                ),
                              ),
                            ),
                            Gap(10.w),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Anita Cruz",
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xff1A1E25),
                                  ),
                                ),
                                Row(
                                  children: [
                                    for (int i = 0; i < 5; i++)
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange,
                                        size: 20.sp,
                                      ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Gap(17.h),
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text:
                                    "My wife & I have moved 6 times in the last 25 years. Obviously, we've dealt with many realtors both on the buying and selling side. I have to say that David is by far the BEST realtor we've ever worked with, his professionalism, personality, attention to detail, responsiveness and...",
                                style: TextStyle(
                                  color: Color(0xff7D7F88),
                                ),
                              ),
                              TextSpan(
                                text: "Read more",
                                style: TextStyle(
                                  color: Color(0xff917AFD),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "\$2,700",
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
                            ],
                          ),
                          Text(
                            "Payment estimation",
                            style: TextStyle(
                              fontSize: 14.sp,
                            ),
                          ),
                        ],
                      ),
                      Gap(68.w),
                      ZoomTapAnimation(
                        onTap: () {
                          setState(() {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return const CheckoutScreen();
                              },
                            ));
                          });
                        },
                        child: Container(
                          width: 156.w,
                          height: 48.h,
                          decoration: BoxDecoration(
                            color: const Color(0xff917AFD),
                            borderRadius: BorderRadius.circular(72),
                          ),
                          child: Center(
                            child: Text(
                              "Rent",
                              style: TextStyle(
                                fontSize: 16.sp,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
