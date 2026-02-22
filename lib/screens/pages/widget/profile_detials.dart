import 'package:finance_ui/shard/themes/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileDetials extends StatelessWidget {
     const ProfileDetials({super.key, required this.title, required this.subTitle});
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: double.infinity, height: 78.h, child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
     
      children: [
        Text(title, style: TextStyle( color: Colors.grey,fontSize: 14.sp, ),),
        SizedBox(height: 15.h,),
        Text(subTitle, style: TextStyle(fontSize: 16.sp, color: Colors.black,fontFamily:Fonts.secondaryFont ),)
      ],
    )
    );
  }
}
