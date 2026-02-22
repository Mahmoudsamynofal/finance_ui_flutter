import 'package:finance_ui/shard/themes/app_color.dart';
import 'package:finance_ui/shard/themes/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CusttomTextFaild extends StatelessWidget {
  CusttomTextFaild({super.key, this.labalText,this.controller,this.kypoardType, this.suffixIcon});
  String? labalText;
  TextEditingController? controller = TextEditingController();
  TextInputType? kypoardType;
  Icon ? suffixIcon;
  

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType:kypoardType ,
      controller: controller,
      cursorColor: AppColor.primryColor,
      decoration: InputDecoration(
        
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(
            color: AppColor.primryColor,
            width: 2
          )
        ),
        
        label: Text(labalText ?? "", style: TextStyle(fontFamily: Fonts.mainFont,fontSize: 15.sp,color: Color(0xff8391A1))),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(
            color: Color(0xff8391A1),
            width: 1
          )
        ),
        suffixIcon: suffixIcon
      ),
      
    );
  }
}
