import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Space extends StatelessWidget {
   Space({super.key,required this.width, required this.height});
   double? width;
   double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(width:width ?? 5.w, height: height ?? 5.h);
  }
}