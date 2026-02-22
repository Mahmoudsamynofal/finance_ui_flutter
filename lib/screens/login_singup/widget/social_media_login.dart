
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SocialMediaLogin extends StatelessWidget {
  SocialMediaLogin({super.key, required this.socialIcon});
  Icon socialIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.h,
      width: 105.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: Color(0xff8391A1)),
      ),
      child: socialIcon,
    );
  }
}