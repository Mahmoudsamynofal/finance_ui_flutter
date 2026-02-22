import 'package:finance_ui/shard/themes/app_color.dart';
import 'package:finance_ui/shard/widget/spaces/hight_space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class XCard extends StatelessWidget {
  XCard({super.key});
  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 10.w,
          bottom: 0,
          child: SizedBox(
            height: 50.h,
            width: 50.w,
            child: Image.asset(
              "assets/image/shape2.png",
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          left: 10,
          bottom: 10,
          child: SizedBox(
            height: 153.h,
            width: 153.w,
            child: Image.asset(
              "assets/image/shape1.png",
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: 263.h,
          width: 207.w,
          decoration: BoxDecoration(
            color: AppColor.primryColor,
            borderRadius: BorderRadius.circular(8.r),
          ),
        ),
        Positioned(
          left: 10.w,
          top: 10.h,
          child: SizedBox(
            width: 150.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HightSpace(height: 20.h),
                Text(
                  "X-Card",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                HightSpace(height: 40.h),
                Text(
                  "Balance",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                HightSpace(height: 5.h),
                Text(
                  "23400 EG",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                HightSpace(height: 70.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "****  3434",
                      style: TextStyle(
                        color: Color(0xffFDFDFD),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "12/24",
                      style: TextStyle(
                        color: Color(0xffFDFDFD),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
               
              
              ],
            ),
          ),
        ),
      ],
    
    );
  }
}
