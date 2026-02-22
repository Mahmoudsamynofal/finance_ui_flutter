import 'package:finance_ui/screens/login_singup/creat_new_pasword.dart';
import 'package:finance_ui/screens/login_singup/widget/lading_app_bar.dart';
import 'package:finance_ui/shard/themes/app_color.dart';
import 'package:finance_ui/shard/themes/app_stayls.dart';
import 'package:finance_ui/shard/widget/buttons.dart';
import 'package:finance_ui/shard/widget/spaces/hight_space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code/pin_code.dart';

class OtpVerification extends StatelessWidget {
   OtpVerification({super.key});
  TextEditingController otpController = TextEditingController();

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
              HightSpace(height: 20.h),
              Text("OTP Verification", style: Stayls.primaryStyle),
              HightSpace(height: 10.h),
              Text(
                "Enter the verification code we just sent on your email address.",
                style: Stayls.subTitle,
              ),
              HightSpace(height: 20.h),
              
                PinCode(
                  appContext: context,
                   length: 4,
                   controller: otpController,
                   pinTheme: PinCodeTheme(
                    fieldWidth: 70.w,
                    fieldHeight: 60.h,
                    shape:PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(10.r),
                    selectedFillColor:AppColor.white,
                    selectedColor: AppColor.primryColor,
                    activeColor: Colors.grey,
                    inactiveColor: Colors.grey,
                  
                    
                    
                   )
          
                  ),
                HightSpace(height: 40.h,),
              ElevatedButtonText(
                buttonText: "Verify",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CreatNewPasword()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
