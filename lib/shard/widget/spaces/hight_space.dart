import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HightSpace extends StatelessWidget {
   HightSpace({super.key, this.height});
  double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height ?? 5.h,);
  }
}