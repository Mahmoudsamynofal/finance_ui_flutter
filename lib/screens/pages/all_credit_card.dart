import 'package:finance_ui/screens/pages/main_page.dart';
import 'package:finance_ui/screens/pages/widget/card_cridet.dart';
import 'package:finance_ui/shard/themes/app_color.dart';
import 'package:finance_ui/shard/themes/app_stayls.dart';
import 'package:finance_ui/shard/widget/spaces/hight_space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllCreditCard extends StatelessWidget {
  const AllCreditCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColor.black,
      appBar: AppBar(
        title: Text("All Cards", style: Stayls.titleProfile),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => MainPage()),
            );
          },
          icon: Icon(Icons.arrow_back_ios, color: AppColor.black, size: 18),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
      ),
      body: Column(
        children: [
          HightSpace(height: 20.h),
          CreditCard(),
          CreditCard(),
        ],
      ),
    );
  }
}


