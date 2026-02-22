import 'package:finance_ui/screens/login_singup/login_screen.dart';
import 'package:finance_ui/screens/login_singup/sing_up_screen.dart';
import 'package:finance_ui/shard/widget/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomScreen extends StatelessWidget {
  const WelcomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            width: 375.w,
            height: 570.h,
            child: Image.asset('assets/image/welcom.png', fit: BoxFit.fill),
          ),
          SizedBox(height: 20.h),
          ElevatedButtonText(
            buttonText: 'Login',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
          ),
          SizedBox(height: 10.h),
          SizedBox(
            height: 56.h,
            width: 331.w,
            child: MaterialButtonText(
              textButton: "SingUp",
              onpressd: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SingUpScreen()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
