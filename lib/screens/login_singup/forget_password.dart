import 'package:finance_ui/screens/login_singup/otp_verification.dart';
import 'package:finance_ui/screens/login_singup/widget/lading_app_bar.dart';
import 'package:finance_ui/shard/themes/app_color.dart';
import 'package:finance_ui/shard/themes/app_stayls.dart';
import 'package:finance_ui/shard/widget/buttons.dart';
import 'package:finance_ui/shard/widget/custtom_text_faild.dart';
import 'package:finance_ui/shard/widget/spaces/hight_space.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: LaddingAppBar()),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HightSpace(height: 30.h),
              Text(
                "Forgot Password?",
                style: TextStyle(
                  color: AppColor.primryColor,
                  fontSize: 30.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              HightSpace(height: 20.h),
              Text(
                "Don't worry! It occurs. Please enter the email address linked with your account.",
                style: Stayls.subTitle,
              ),
              HightSpace(height: 30.h),
              CusttomTextFaild(
                labalText: "Enter your email",
                kypoardType: TextInputType.emailAddress,
              ),
              HightSpace(height: 50.h),
              ElevatedButtonText(
                buttonText: "Send Code",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OtpVerification()),
                  );
                },
              ),
              HightSpace(height: 300.h),

              Align(
                alignment: Alignment.center,
                child: RichText(
                  text: TextSpan(
                    text: "Remember your password? ",
                    style: Stayls.subTitle,
                    children: [
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pop(context);
                          },
                        text: "Sign In",
                        style: TextStyle(
                          color: AppColor.primryColor,
                          fontWeight: FontWeight.bold,
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
