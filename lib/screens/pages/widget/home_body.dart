import 'package:finance_ui/screens/pages/model/model_home.dart';
import 'package:finance_ui/shard/themes/app_color.dart';
import 'package:finance_ui/shard/themes/app_stayls.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeBody extends StatelessWidget {
  HomeBody({super.key, required this.model});
  ModelHome model;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.r),
      width: 156.w,
      height: 146.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: Color(0xffE5E5E5), width: 1),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 40.w,
            height: 40.h,
            decoration: BoxDecoration(
              color: Color(0xffE5E5E5),
              borderRadius: BorderRadius.circular(8.r),
            ),

            child: Icon(
              model.icon,
              color: AppColor.primryColor,
              size: 20.sp,
            ),
          ),
          SizedBox(height: 40.h),
          Text(model.title),

          SizedBox(height: 10.h),
          Text(model.discription, style: Stayls.subTitle3),
        ],
      ),
    );
  }
}
