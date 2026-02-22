import 'package:finance_ui/shard/themes/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ElevatedButtonText extends StatelessWidget {
  ElevatedButtonText({
    required this.buttonText,
    required this.onPressed,
    super.key,
    this.color,
  });
  String buttonText;
  Function() onPressed;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 331.w,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color ?? AppColor.primryColor,
          fixedSize: Size(331.w, 50.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
        ),
        child: Text(buttonText, style: TextStyle(color: Colors.white)),
      ),
    );
  }
}

class MaterialButtonText extends StatelessWidget {
  MaterialButtonText({
    super.key,
    this.onpressd,
    this.colorBordeSide,
    this.colorTextrButton,
    required this.textButton
  });
  Function()? onpressd;
  Color? colorBordeSide;
  Color?  colorTextrButton;
  String textButton;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onpressd,
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: BorderSide(color: colorBordeSide ?? AppColor.primryColor),
      ),
      child: Text(
        textButton,
        style: TextStyle(color: colorTextrButton ?? AppColor.primryColor),
      ),
    );
  }
}
