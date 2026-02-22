import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:finance_ui/screens/pages/model/model_home.dart';
import 'package:finance_ui/screens/pages/widget/home_body.dart';
import 'package:finance_ui/screens/pages/widget/x_card.dart';
import 'package:finance_ui/shard/themes/app_color.dart';
import 'package:finance_ui/shard/themes/app_fonts.dart';
import 'package:finance_ui/shard/themes/app_stayls.dart';
import 'package:finance_ui/shard/widget/spaces/hight_space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});
  int currentindex = 0;
  List<ModelHome> dataBody = [
    ModelHome(icon: Icons.send, title: "send mony", discription: "Take acc to acc"),
     ModelHome(icon: Icons.payment, title: "Pay the bill", discription: "Lorem ipsum"),
       ModelHome(icon: Icons.request_page, title: "request", discription: "Lorem ipsum"),
        ModelHome(icon: Icons.contact_mail, title: "contact", discription: "Lorem ipsum"),
  ];

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 60.w,
        leading: CircleAvatar(
          backgroundImage: AssetImage("assets/image/hooda.jpg"),
          radius: 100.r,
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Text("Welcome back", style: Stayls.subTitle),
            SizedBox(height: 5.h),
            Text(
              "mahmoud nofal",
              style: TextStyle(
                color: AppColor.black,
                fontSize: 18,
                fontFamily: Fonts.mainFont,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          Container(
            width: 48.w,
            height: 48.h,
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xffE5E5E5), width: 1),
              borderRadius: BorderRadius.circular(100.r),
            ),
            child: Icon(
              Icons.notifications_none_outlined,
              color: AppColor.primryColor,
              size: 25.sp,
            ),
          ),
          SizedBox(width: 20.w),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HightSpace(height: 20.h),
          CarouselSlider(
            items: [XCard(), XCard(), XCard()],
            //  [
            //   XCard()
            // ],
            options: CarouselOptions(
              height: 266.h,
              enlargeCenterPage: true,
              viewportFraction: 0.50,
              enlargeFactor: 0.2,
              initialPage: 0,
              padEnds: false,
              onPageChanged: (index, reason) {
                setState(() {
                  widget.currentindex = index;
                });
              },
            ),
          ),

          Align(
            alignment: Alignment.center,
            child: DotsIndicator(
              dotsCount: 3,
              position: widget.currentindex.toDouble(),
              decorator: DotsDecorator(
                size: const Size.square(9.0),
                activeSize: const Size(18.0, 9.0),
                activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
            ),
          ),

          HightSpace(height: 20.h),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 156 / 146,
              ),
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return HomeBody(
                  model:widget.dataBody[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
