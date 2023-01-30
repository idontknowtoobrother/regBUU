import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'AppColor.dart';

import 'package:reg_buu_62160246/HomeScreen.dart';
import 'package:reg_buu_62160246/StudentScreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _screenIndex = 0;
  List<Widget> _screen = [HomeScreen(), StudentScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.body,
      appBar: null,
      body: _screen[_screenIndex],
      bottomNavigationBar: Container(
        color: Color(0xFF0D1117),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
          child: GNav(
            gap: 8,
            tabBorderRadius: 15,
            backgroundColor: Color(0xFF0D1117),
            activeColor: Color(0xFFC9D1D9),
            tabBackgroundColor: Color(0xFF21262D),
            color: Color(0xFFC9D1D9),
            padding: EdgeInsets.all(9),
            onTabChange: (index) {
              setState(() {
                _screenIndex = index;
              });
            },
            iconSize: 28,
            tabs: [
              GButton(
                active: true,
                icon: Icons.home,
                text: "Home",
              ),
              GButton(
                icon: Icons.person_pin,
                text: "Student",
              ),
              GButton(
                icon: Icons.logout_rounded,
              )
            ],
          ),
        ),
      ),
    );
  }
}
