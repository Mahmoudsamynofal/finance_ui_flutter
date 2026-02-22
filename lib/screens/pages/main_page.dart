import 'package:finance_ui/screens/pages/add_cards.dart';
import 'package:finance_ui/screens/pages/all_credit_card.dart';

import 'package:finance_ui/screens/pages/home_screen.dart';
import 'package:finance_ui/screens/pages/profile_screen.dart';
import 'package:finance_ui/screens/pages/statatics.dart';
import 'package:finance_ui/shard/themes/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainPage extends StatefulWidget {
   const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
 List<Widget> screens = [
  HomeScreen(),
    Statatics(),
     MySample(),
  AllCreditCard(),

  ProfileScreen(),
 ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
       fixedColor: AppColor.primryColor,
       unselectedItemColor: AppColor.secondColor,
        items: [

        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.wallet), label: "statics"),
         BottomNavigationBarItem(

          icon: SizedBox(
          height: 80.h,
          width: 80.w,
          child: Image.asset("assets/icons/add.png",fit:BoxFit.fill ,)), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.card_travel), label: "My card"),
         BottomNavigationBarItem(icon: Icon(Icons.person), label: "profil"),
      ],
      onTap: (value) {
         
          setState(() {
             currentIndex = value;
          });
          
      },
      ),

      
    );
  }
}
