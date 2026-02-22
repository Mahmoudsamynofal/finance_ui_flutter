import 'package:finance_ui/screens/login_singup/forget_password.dart';
import 'package:finance_ui/screens/login_singup/sing_up_screen.dart';
import 'package:finance_ui/screens/login_singup/widget/lading_app_bar.dart';
import 'package:finance_ui/screens/login_singup/widget/social_media_login.dart';
import 'package:finance_ui/screens/pages/main_page.dart';
import 'package:finance_ui/shard/themes/app_color.dart';
import 'package:finance_ui/shard/themes/app_stayls.dart';
import 'package:finance_ui/shard/widget/buttons.dart';
import 'package:finance_ui/shard/widget/custtom_text_faild.dart';
import 'package:finance_ui/shard/widget/spaces/hight_space.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  TextEditingController controlorEmail = TextEditingController();
  TextEditingController controlorPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: LaddingAppBar(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HightSpace(height: 30.h),
              SizedBox(
                height: 78.h,
                width: 280.w,
                child: Text("Welcome back! Again!", style: Stayls.primaryStyle),
              ),
              HightSpace(height: 50.h),
              CusttomTextFaild(
                labalText: "Enter your email",
                kypoardType: TextInputType.emailAddress,
                controller: controlorEmail,
              ),
              HightSpace(height: 20.h),
              CusttomTextFaild(
                labalText: "Enter your password",
                kypoardType: TextInputType.visiblePassword,
                controller: controlorPassword,
                suffixIcon: Icon(
                  Icons.visibility_off_outlined,
                  color: Color(0xff8391A1),
                  size: 20.sp,
                ),
              ),

              Align(
                alignment: Alignment.topRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ForgetPassword()),
                    );
                  },
                  child: Text(
                    "Forget Password?",
                    style: TextStyle(color: AppColor.black, fontSize: 14.sp),
                  ),
                ),
              ),

              ElevatedButtonText(buttonText: "Login", onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MainPage()));
              }),
              HightSpace(height: 20.h),
              Row(
                children: [
                  Expanded(child: Divider(color: Color(0xff8391A1))),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      "Or login with",
                      style: TextStyle(
                        color: Color(0xff8391A1),
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                  Expanded(child: Divider(color: Color(0xff8391A1))),
                ],
              ),
              HightSpace(height: 50.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SocialMediaLogin(
                    socialIcon: Icon(
                      Icons.facebook,
                      color: AppColor.primryColor,
                      size: 25.sp,
                    ),
                  ),
                  SocialMediaLogin(
                    socialIcon: Icon(
                      Icons.apple,
                      color: AppColor.black,
                      size: 25.sp,
                    ),
                  ),
                  SocialMediaLogin(
                    socialIcon: Icon(
                      Icons.facebook,
                      color: AppColor.primryColor,
                      size: 25.sp,
                    ),
                  ),
                ],
              ),
              HightSpace(height: 100.h),
              Align(
                alignment: Alignment.center,
                child: RichText(
                  text: TextSpan(
                    text: "Don't have an account? ",
                    style: TextStyle(color: Color(0xff8391A1), fontSize: 14.sp),
                    children: [
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SingUpScreen(),
                              ),
                            );
                          },
                        text: "Sign up",
                        style: TextStyle(
                          color: AppColor.primryColor,
                          fontSize: 14.sp,
                        ),
                      ),
                    ],
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


