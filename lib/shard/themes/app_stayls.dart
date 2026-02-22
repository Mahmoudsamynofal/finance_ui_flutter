import 'package:finance_ui/shard/themes/app_fonts.dart';
import 'package:flutter/widgets.dart';
import 'package:finance_ui/shard/themes/app_color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Stayls {
  static TextStyle primaryStyle = TextStyle(
    fontSize: 30.sp,
    height: 1.3.h,
    fontWeight: FontWeight.bold,
    color: AppColor.primryColor,
    fontFamily: Fonts.mainFont,
  );

  static TextStyle scondry = TextStyle(
    fontSize: 26,
    height: 1,
    fontWeight: FontWeight.bold,
    color: AppColor.primryColor,
    fontFamily: Fonts.mainFont,
  );

  static TextStyle subTitle = TextStyle(
    fontSize: 16,
    height: 1.5,

    fontWeight: FontWeight.w500,
    color: AppColor.secondColor,
    fontFamily: Fonts.mainFont,
  );
  static TextStyle subTitle2 = TextStyle(
    fontSize: 16.sp,
    height: 0.4.h,

    fontWeight: FontWeight.w500,
    color: AppColor.black,
    fontFamily: Fonts.mainFont,
  );

  static TextStyle subTitle3 = TextStyle(
    fontSize: 12.sp,
    height: 0.4.h,

    fontWeight: FontWeight.w500,
    color: AppColor.secondColor,
    fontFamily: Fonts.mainFont,
  );
  static TextStyle titleProfile = TextStyle(
    fontSize: 18.sp,
    height: 1.5.h,
    fontWeight: FontWeight.bold,
    fontFamily: Fonts.secondaryFont,
    color:  AppColor.black
  );
}
