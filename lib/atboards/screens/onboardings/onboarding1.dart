import 'package:flut_renting_app/atboards/widgets/onboarding_widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gap/gap.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class Onboarding1Screen extends StatefulWidget {
  const Onboarding1Screen({super.key});

  @override
  State<Onboarding1Screen> createState() => _Onboarding1ScreenState();
}

class _Onboarding1ScreenState extends State<Onboarding1Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 0.6.sh,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: MasonryGridView.builder(
                itemCount: 18,
                gridDelegate:
                    const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3),
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      "assets/images/onboarding_images/${index + 1}.jpg",
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Text(
                  "New Place, New Home!",
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Are you ready to uproot and start over in a new\n   area?Placoo will help you on your journey!",
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: Color(0xff7D7F88),
                  ),
                ),
                Gap(32.h),

                /// Button Log in
                ZoomTapAnimation(
                  onTap: () {
                    // setState(() {
                    //   Navigator.push(context, MaterialPageRoute(
                    //     builder: (context) {
                    //       return const Placeholder();
                    //     },
                    //   ));
                    // });
                  },
                  child: const Button1(
                    textButton: "Log in",
                    colorButton: Color(0xff917AFD),
                    colorText: Color(0xffFFFFFF),
                  ),
                ),
                Gap(14.h),

                /// Button Log in
                ZoomTapAnimation(
                  onTap: () {
                    // setState(() {
                    //   Navigator.push(context, MaterialPageRoute(
                    //     builder: (context) {
                    //       return const Placeholder();
                    //     },
                    //   ));
                    // });
                  },
                  child: const Button1(
                    textButton: "Sign up",
                    colorButton: Color(0xffFFFFFF),
                    colorText: Color(0xff475569),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
