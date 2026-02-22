import 'package:finance_ui/screens/login_singup/sucsees_confirm_passsword.dart';
import 'package:finance_ui/screens/login_singup/widget/lading_app_bar.dart';
import 'package:finance_ui/shard/themes/app_stayls.dart';
import 'package:finance_ui/shard/widget/buttons.dart';
import 'package:finance_ui/shard/widget/custtom_text_faild.dart';
import 'package:finance_ui/shard/widget/spaces/hight_space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CreatNewPasword extends StatelessWidget {
  const CreatNewPasword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: LaddingAppBar(),

      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HightSpace(height: 20.h),
              Text("Creat New Password", style: Stayls.primaryStyle),
              HightSpace(height: 10.h),
              Text("Your new password must be unique from those previously used.", style: Stayls.subTitle),
              HightSpace(height: 40.h),
             
              CusttomTextFaild(
                labalText:"new password",
                kypoardType: TextInputType.visiblePassword,
              ),
              HightSpace(height: 10.h,),
               CusttomTextFaild(
                labalText:"confirm  password",
                kypoardType: TextInputType.visiblePassword,
              ),
              HightSpace(height: 40.h),
              ElevatedButtonText(buttonText: "Reset Password", onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SucseesConfirmPasssword()));
              })
            ],
          
          
          ),
        ),
      ),
    );
  }
}