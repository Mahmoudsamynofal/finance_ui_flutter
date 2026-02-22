import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WidthSpace extends StatelessWidget {
   WidthSpace({super.key, this.width});
  double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: width ?? 5.w,);
  }
}