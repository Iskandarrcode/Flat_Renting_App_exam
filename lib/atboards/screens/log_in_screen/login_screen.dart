import 'package:flut_renting_app/atboards/screens/home_screen/home_screen.dart';
import 'package:flut_renting_app/atboards/screens/onboardings/onboarding1.dart';
import 'package:flut_renting_app/atboards/widgets/login_widgets/button2.dart';
import 'package:flut_renting_app/atboards/widgets/login_widgets/text_fields.dart';
import 'package:flut_renting_app/atboards/widgets/onboarding_widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

List<Map<String, dynamic>> dataBase = [];

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  String errorMessageEmail = "";

  final passwordController = TextEditingController();
  String errorMessagePassword = "";

  get colorText => null;

  get iconButton => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: ZoomTapAnimation(
          onTap: () {
            Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (context) {
                return const Onboarding1Screen();
              },
            ));
          },
          child: Icon(
            Icons.arrow_back_ios_new,
            size: 20.sp,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome Back!",
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Gap(8.h),
              Text(
                "Log In to your Placoo account to explore your dream place to live across the whole world!",
                style: TextStyle(
                  fontSize: 14.sp,
                  color: const Color(0xff7D7F88),
                ),
              ),
              Gap(40.h),
              Text(
                "Username",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Gap(8.h),
              TextFields(
                errorMessage: errorMessageEmail,
                textEditingController: emailController,
                textField: "Email",
                iconField: Icons.person,
                iconColor: const Color(0xff6246EA),
              ),
              Gap(18.h),
              TextFields(
                errorMessage: errorMessagePassword,
                textEditingController: passwordController,
                textField: "Insert your password",
                iconField: Icons.key,
                iconColor: Colors.grey.shade600,
              ),
              Gap(28.h),
              ZoomTapAnimation(
                onTap: () {
                  if (emailController.text.isEmpty) {
                    setState(() {
                      errorMessageEmail = "Iltimos Emailni kiriting!";
                    });
                  }
                  if (passwordController.text.isEmpty) {
                    setState(() {
                      errorMessagePassword = "Iltimos Passwordni kiriting!";
                    });
                  }

                  if (emailController.text.contains("@") &&
                      emailController.text.length > 10 &&
                      passwordController.text.length > 8) {
                    if (errorMessageEmail.isEmpty &&
                        errorMessagePassword.isEmpty) {
                      dataBase.add({
                        "email": emailController.text,
                        "password": passwordController.text
                      });
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return const HomeScreen();
                          },
                        ));
                      });
                    }
                  }

                  if (!emailController.text.contains("@")) {
                    setState(() {
                      errorMessageEmail = "Emailni to'g'ri kiriting!";
                    });
                  }
                  if (passwordController.text.length < 8) {
                    setState(() {
                      errorMessagePassword =
                          "Paro'l 8 ta belgidan ko'p bo'lishi shart";
                    });
                  } else {
                    errorMessageEmail = "";
                    errorMessagePassword = "";
                  }
                },
                child: const Button1(
                  textButton: "Log in",
                  colorButton: Color(0xff917AFD),
                  colorText: Colors.white,
                ),
              ),
              Gap(12.h),
              Center(
                child: Text(
                  "Forgot password?",
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: const Color(0xff7D7F88),
                  ),
                ),
              ),
              Gap(42.h),
              SizedBox(
                width: 1.sw,
                height: 24.h,
                child: Stack(
                  children: [
                    Positioned(
                      top: 10.h,
                      child: Container(
                        width: 1.sw,
                        height: 1,
                        decoration: const BoxDecoration(
                          color: Color(0xffEBE8F6),
                        ),
                      ),
                    ),
                    Positioned(
                      child: Center(
                        child: Container(
                          width: 47.w,
                          height: 26.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            color: const Color(0xffEBE8F6),
                          ),
                          child: Center(
                            child: Text(
                              "OR",
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: const Color(0xff9E91DA),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Gap(42.h),
              const Button2(
                text: "Sign in with Apple",
                textColor: Colors.white,
                buttonColor: Color(0xff222831),
                iconButton: "assets/icons/login_icons/1.svg",
              ),
              Gap(12.h),
              const Button2(
                text: "Sign in with Google",
                textColor: Color(0xff475569),
                buttonColor: Colors.white,
                iconButton: "assets/icons/login_icons/2.svg",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
