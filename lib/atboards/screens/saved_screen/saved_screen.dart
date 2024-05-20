import 'package:flut_renting_app/atboards/widgets/home_widgets/search_widget.dart';
import 'package:flut_renting_app/atboards/widgets/saved_widgets/saved_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class SavedScreen extends StatefulWidget {
  const SavedScreen({super.key});

  @override
  State<SavedScreen> createState() => _SavedScreenState();
}

class _SavedScreenState extends State<SavedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Gap(30.h),
              SearchWidget(
                textField: "Search address, city, location",
                iconField: "assets/icons/home_icons/3.svg",
                iconBack: false,
              ),
              Gap(30.h),
              SavedContainer(
                image: "assets/images/home_images/1.png",
                text1: " 4.8 ",
                text2: "(73)",
                text3: "Entire Bromo mountain view Cabin in Surabaya",
                text4: "Malang, Probolinggo",
                text5: "",
                text6: "\$1,290",
              ),
              Gap(30.h),
              SavedContainer(
                image: "assets/images/home_images/2.png",
                text1: " 4.9 ",
                text2: "(104)",
                text3: "Entire private villa in Jakarta City",
                text4: "Harapan Raya, Jakarta",
                text5: "",
                text6: "\$1,290",
              ),
              Gap(30.h),
              SavedContainer(
                image: "assets/images/saved_images/3.png",
                text1: " 4.8 ",
                text2: "(73)",
                text3: "Entire private villa in Jakarta City",
                text4: "Harapan Raya, Jakarta",
                text5: "",
                text6: "\$1,290",
              ),
              Gap(30.h),
              SavedContainer(
                image: "assets/images/saved_images/4.png",
                text1: " 4.8 ",
                text2: "(73)",
                text3: "Entire green medieavel house in Bandung",
                text4: "Bukit Barisan, Bandung",
                text5: "",
                text6: "\$1,290",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
