import 'package:finance_ui/screens/pages/main_page.dart';
import 'package:finance_ui/screens/pages/widget/profile_detials.dart';
import 'package:finance_ui/shard/themes/app_color.dart';
import 'package:finance_ui/shard/themes/app_stayls.dart';
import 'package:finance_ui/shard/widget/spaces/hight_space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile", style: Stayls.titleProfile),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => MainPage()),
            );
          },
          icon: Icon(Icons.arrow_back_ios,color: AppColor.black,size: 18,),
        ),
        actions: [
          IconButton(
            onPressed: () {
              
            },
            icon: Icon(Icons.edit_calendar_rounded),
          ),
        ],
      ),

      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              HightSpace(height: 10.h,),
              CircleAvatar(
                backgroundImage: AssetImage("assets/image/hooda.jpg"),
                radius: 50.r,
              ),
              HightSpace(height: 10.h,),
              ProfileDetials(title: "Name", subTitle: "Hooda Alsharif"),
              HightSpace(height: 10.h,),
              ProfileDetials(title: "Email", subTitle: "hooda@gmail.com"),
               HightSpace(height: 10.h,),
              ProfileDetials(title: "Phone", subTitle: "+962788888888"),
               HightSpace(height: 10.h,),
              ProfileDetials(title: "Address", subTitle: "Amman, Jordan"),
             
            ],
          ),
        ),
      ),
    );
  }
}
