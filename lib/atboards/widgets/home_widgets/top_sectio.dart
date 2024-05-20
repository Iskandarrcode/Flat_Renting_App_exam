import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class TopSection extends StatefulWidget {
  const TopSection({super.key});

  @override
  State<TopSection> createState() => _TopSectionState();
}

class _TopSectionState extends State<TopSection> {
  bool buttonNext = true;
  bool buttonNext2 = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          width: 343.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(72),
            color: const Color(0xffF2F2F3),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ZoomTapAnimation(
                onTap: () {
                  buttonNext = !buttonNext;
                  buttonNext2 = !buttonNext2;
                  setState(() {});
                },
                child: Container(
                  width: 156.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(72),
                    color: buttonNext
                        ? const Color(0xff917AFE)
                        : const Color(0xffF2F2F3),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Expanded(
                        child: Text(
                          "I need to rent",
                          style: TextStyle(
                            fontSize: 15.sp,
                            color: buttonNext
                                ? Colors.white
                                : const Color(0xff7D7F88),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              ZoomTapAnimation(
                onTap: () {
                  buttonNext2 = !buttonNext2;
                  buttonNext = !buttonNext;
                  setState(() {});
                },
                child: Container(
                  width: 156.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(72),
                    color: buttonNext2
                        ? const Color(0xff917AFE)
                        : const Color(0xffF2F2F3),
                  ),
                  child: Center(
                    child: Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          "I need to buy",
                          style: TextStyle(
                            fontSize: 15.sp,
                            color: buttonNext2
                                ? Colors.white
                                : const Color(0xff7D7F88),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
