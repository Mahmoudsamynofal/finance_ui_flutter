

import 'package:finance_ui/shard/themes/app_color.dart';
import 'package:finance_ui/shard/themes/app_fonts.dart';
import 'package:finance_ui/shard/widget/spaces/hight_space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.all(20.r),
          width: double.infinity,
          height: 200.h,
          decoration: BoxDecoration(
            color: AppColor.primryColor,
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomLeft,
                child: SizedBox(
                  width: 300,
                  height: 300,
                  child: Image.asset("assets/image/shape1.png"),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: Image.asset("assets/image/shape2.png"),
                ),
              ),
              Positioned(
                top: 10,
                left: 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HightSpace(height: 20.h),
    
                    Text(
                      "X-Card",
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: AppColor.white,
                        fontFamily: Fonts.secondaryFont,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    HightSpace(height: 20.h),
                    Text(
                      "Balance",
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Color(0xffFDFDFD).withOpacity(0.2),
                        fontWeight: FontWeight.w500,
                        fontFamily: Fonts.secondaryFont,
                      ),
                    ),
                    HightSpace(height: 10.h),
                    Text(
                      "23400 EG",
                      style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w700,
                        fontFamily: Fonts.secondaryFont,
                        color: Color(0xffFDFDFD),
                      ),
                    ),
                    HightSpace(height: 10.h),
                    SizedBox(
                      width: 300.w,
                      child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                      
                          Text(
                            "****  3434",
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: AppColor.white,
                            ),
                          ),
                        
                          Text(
                            "12/22",
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: AppColor.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}