import 'package:flut_renting_app/atboards/widgets/chat_widgets/chat_container.dart';
import 'package:flut_renting_app/atboards/widgets/home_widgets/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
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
              ChatUsers(
                text1: "Kari Rasmussen",
                text2: "15:30",
                text3: "Thanks for contacting me!",
                imageUser: "assets/images/chat_images/1.png",
                icon: true,
              ),
              Gap(24.h),
              ChatUsers(
                text1: "Anita Cruz",
                text2: "Yesterday",
                text3: "Your payment was accepted.",
                imageUser: "assets/images/chat_images/2.png",
                icon: false,
              ),
              Gap(24.h),
              ChatUsers(
                text1: "Noah Pierre",
                text2: "11/10/2021",
                text3: "It was great experience!",
                imageUser: "assets/images/chat_images/3.png",
                icon: false,
              ),
              Gap(24.h),
              ChatUsers(
                text1: "Lucy Bond",
                text2: "11/10/2021",
                text3: "How much does it cost?",
                imageUser: "assets/images/chat_images/4.png",
                icon: false,
              ),
              Gap(24.h),
              ChatUsers(
                text1: "Louise Vuitton",
                text2: "11/10/2021",
                text3: "Sure, man!",
                imageUser: "assets/images/chat_images/5.png",
                icon: false,
              ),
              Gap(24.h),
            ],
          ),
        ),
      ),
    );
  }
}
