import 'package:finance_ui/screens/login_singup/login_screen.dart';
import 'package:finance_ui/shard/themes/app_stayls.dart';
import 'package:finance_ui/shard/widget/buttons.dart';
import 'package:finance_ui/shard/widget/spaces/hight_space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SucseesConfirmPasssword extends StatelessWidget {
  const SucseesConfirmPasssword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SizedBox(
        width: double.infinity,
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/icons/Sticker.png"),
            SizedBox(height: 10.h,),
            Text("Password Changed!",style: Stayls.primaryStyle,),
            HightSpace(height: 10.h),
            Text("Your password has been changed successfully.",style: Stayls.subTitle3,
            textAlign: TextAlign.center,),
            HightSpace(height: 10.h),
            ElevatedButtonText(buttonText: "back to login", onPressed: (){
             Navigator .pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
            }),
        
          ],
        ),
      )
    );
  }
}