import 'package:flut_renting_app/atboards/screens/home_screen/home_screen.dart';
import 'package:flut_renting_app/atboards/screens/property_details_screen/property_screen.dart';
import 'package:flut_renting_app/atboards/widgets/checkout_widgets/checkout_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  void showMessage() async {
    await showDialog(
        barrierDismissible: false,
        context: context,
        builder: (ctx) {
          return AlertDialog(
            title: Column(
              children: [
                Container(
                  width: 100.w,
                  height: 108.h,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade400),
                    borderRadius: BorderRadius.circular(60),
                  ),
                  child: Icon(
                    Icons.check,
                    color: const Color.fromARGB(255, 19, 108, 216),
                    size: 40.sp,
                  ),
                ),
                const Gap(30),
                Text(
                  "Your request has been",
                  style: TextStyle(
                    fontSize: 25.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Center(
                  child: Text(
                    "booked",
                    style: TextStyle(
                      fontSize: 25.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Gap(10),
                Text(
                  "Congratulation you are succes to change",
                  style: TextStyle(
                    color: Colors.grey.shade500,
                    fontSize: 14.sp,
                  ),
                ),
                const Gap(10),
                Center(
                  child: Text(
                    "your profile",
                    style: TextStyle(
                      color: Colors.grey.shade500,
                      fontSize: 14.sp,
                    ),
                  ),
                ),
                const Gap(30),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: ZoomTapAnimation(
                  onTap: () {
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return const HomeScreen();
                        },
                      ));
                    });
                  },
                  child: Container(
                    width: 1.sw,
                    height: 60.h,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 19, 108, 216),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text(
                        "OK",
                        style: TextStyle(
                          color: Colors.grey.shade300,
                          fontSize: 18.sp,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        });
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: ZoomTapAnimation(
          onTap: () {
            Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (context) {
                return const PropertyScreen();
              },
            ));
          },
          child: Icon(
            Icons.arrow_back_ios_new,
            size: 20.sp,
          ),
        ),
        title: const Text(
          "Rent booking",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              CheckoutContainer(
                image: "assets/images/home_images/1.png",
                text1: " 4.8 ",
                text2: "(73)",
                text3: "Entire Bromo mountain view Cabin in Surabaya",
                text4: "Malang, Probolinggo",
                text5: "\$1,290",
              ),
              Gap(24.h),
              Container(
                width: 1.sw,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Your input details",
                            style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          ZoomTapAnimation(
                            child: Text(
                              "Edit",
                              style: TextStyle(
                                fontSize: 14.sp,
                                color: const Color(0xff917AFD),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Gap(10.h),
                      Text(
                        "Date",
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Gap(10.h),
                      Text(
                        "11 Nov - 5 Dec",
                        style: TextStyle(
                          fontSize: 18.sp,
                          color: const Color(0xff7D7F88),
                        ),
                      ),
                      Gap(10.h),
                      Text(
                        "Guests count",
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Gap(10.h),
                      Text(
                        "3 guests",
                        style: TextStyle(
                          fontSize: 18.sp,
                          color: const Color(0xff7D7F88),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Gap(24.h),
              Container(
                width: 1.sw,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Price details",
                            style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          ZoomTapAnimation(
                            child: Text(
                              "More info",
                              style: TextStyle(
                                fontSize: 14.sp,
                                color: const Color(0xff917AFD),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Gap(15.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Staying duration (24 days)",
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: const Color(0xff7D7F88),
                            ),
                          ),
                          Text(
                            "\$2,360",
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Gap(15.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Service fee",
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: const Color(0xff7D7F88),
                            ),
                          ),
                          Text(
                            "\$200",
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Gap(10.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total price",
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          ZoomTapAnimation(
                            child: Text(
                              "\$2,460",
                              style: TextStyle(
                                fontSize: 16.sp,
                                color: const Color(0xff917AFD),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Gap(24.h),
              Container(
                width: 1.sw,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Pay with",
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Gap(20.h),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 22.w,
                                    height: 22.h,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/icons/checkout_icons/1.png"),
                                      ),
                                    ),
                                  ),
                                  Gap(10.w),
                                  Text(
                                    "Debit card",
                                    style: TextStyle(fontSize: 16.sp),
                                  ),
                                ],
                              ),
                              ZoomTapAnimation(
                                child: Container(
                                  width: 22.w,
                                  height: 22.h,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          "assets/icons/checkout_icons/2.png"),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Text(
                              "Accepting Visa, Mastercard, etc",
                              style: TextStyle(
                                fontSize: 13.sp,
                                color: const Color(0xff7D7F88),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Gap(20.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 18.w,
                                height: 18.h,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        "assets/icons/checkout_icons/3.png"),
                                  ),
                                ),
                              ),
                              Gap(10.w),
                              Text(
                                "Google Play",
                                style: TextStyle(fontSize: 16.sp),
                              ),
                            ],
                          ),
                          ZoomTapAnimation(
                            child: Container(
                              width: 22.w,
                              height: 22.h,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/icons/checkout_icons/2.png"),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Gap(20.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 20.w,
                                height: 20.h,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        "assets/icons/checkout_icons/4.png"),
                                  ),
                                ),
                              ),
                              Gap(10.w),
                              Text(
                                "Apple Pay",
                                style: TextStyle(fontSize: 16.sp),
                              ),
                            ],
                          ),
                          ZoomTapAnimation(
                            child: Container(
                              width: 22.w,
                              height: 22.h,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/icons/checkout_icons/2.png"),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Gap(20.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 20.w,
                                height: 20.h,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        "assets/icons/checkout_icons/5.png"),
                                  ),
                                ),
                              ),
                              Gap(10.w),
                              Text(
                                "PayPal",
                                style: TextStyle(fontSize: 16.sp),
                              ),
                            ],
                          ),
                          ZoomTapAnimation(
                            child: Container(
                              width: 22.w,
                              height: 22.h,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/icons/checkout_icons/2.png"),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Gap(24.h),
              Container(
                padding: const EdgeInsets.all(24),
                width: 1.sw,
                height: 74.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 22.w,
                          height: 22.h,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  "assets/icons/checkout_icons/6.png"),
                            ),
                          ),
                        ),
                        Gap(14.w),
                        Text(
                          "Read other policies",
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    ZoomTapAnimation(
                      child: Container(
                        width: 18.w,
                        height: 18.h,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image:
                                AssetImage("assets/icons/checkout_icons/7.png"),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Gap(32.h),
              ZoomTapAnimation(
                onTap: () {
                  setState(() {
                    showMessage();
                  });
                },
                child: Container(
                  width: 1.sw,
                  height: 48.h,
                  decoration: BoxDecoration(
                    color: const Color(0xff917AFD),
                    borderRadius: BorderRadius.circular(54),
                  ),
                  child: Center(
                    child: Text(
                      "Place booking request",
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
