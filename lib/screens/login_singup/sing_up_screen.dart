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

class SingUpScreen extends StatelessWidget {
  const SingUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: LaddingAppBar()),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 78.h,
                width: 331.w,
                child: Text(
                  "Hello! Register to get started",
                  style: Stayls.primaryStyle,
                ),
              ),
              HightSpace(height: 50.h),
              CusttomTextFaild(
                labalText: " user name",
                kypoardType: TextInputType.emailAddress,
              ),
              HightSpace(height: 10.h),
              CusttomTextFaild(
                labalText: " email",
                kypoardType: TextInputType.emailAddress,
              ),
              HightSpace(height: 10.h),
              CusttomTextFaild(
                labalText: " password",
                kypoardType: TextInputType.emailAddress,
              ),
              HightSpace(height: 10.h),
              CusttomTextFaild(
                labalText: "Confirm password",
                kypoardType: TextInputType.emailAddress,
              ),
              HightSpace(height: 10.h),
              ElevatedButtonText(
                buttonText: "register",
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => MainPage()),
                  );
                },
              ),
              HightSpace(height: 20.h),
              Row(
                children: [
                  Expanded(child: Divider(color: Color(0xff8391A1))),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      "Or register with",
                      style: TextStyle(
                        color: Color(0xff8391A1),
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                  Expanded(child: Divider(color: Color(0xff8391A1))),
                ],
              ),
              HightSpace(height: 20.h),
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
              HightSpace(height: 60.h),

              Align(
                alignment: Alignment.center,
                child: RichText(
                  text: TextSpan(
                    text: "Already have an account? ",
                    style: TextStyle(color: Color(0xff8391A1), fontSize: 14.sp),

                    children: [
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pop(context);
                          },
                        text: "Login",
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
