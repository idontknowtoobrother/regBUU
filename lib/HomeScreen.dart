import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'AppColor.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const wrapMargin = EdgeInsets.only(left: 15, top: 20, right: 15);
  static const wrapOthersMargin = EdgeInsets.only(left: 15, top: 11, right: 15);
  static const wrapBorder = BorderRadius.all(Radius.circular(15));
  static const wrapPadding = EdgeInsets.all(11);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.body,
      appBar: null,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: wrapPadding,
                  decoration: BoxDecoration(
                      color: AppColor.wrap, borderRadius: wrapBorder),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        radius: 60,
                        backgroundImage: NetworkImage(
                            'https://media.discordapp.net/attachments/1023825760143802448/1069252980500611123/image.png'),
                      ),
                      const SizedBox(
                        width: 26,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Jakkrit Chaopron',
                            style: TextStyle(fontSize: 22),
                          ),
                          Text(
                            '62160246@go.buu.ac.th',
                            style: TextStyle(
                              fontSize: 14,
                              color: AppColor.subText,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 11),
                  padding: wrapPadding,
                  decoration: BoxDecoration(
                      color: AppColor.wrap, borderRadius: wrapBorder),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/cap.png',
                        width: 59,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                              'Faculty of Informatics | Computer Science'),
                          Text(
                            'Bachelor\'s degree',
                            style: TextStyle(color: AppColor.subText),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    CareerCard(title: 'GPA', value: '2.78'),
                    SizedBox(
                      width: 15,
                    ),
                    CareerCard(title: 'C.REG', value: '110'),
                    SizedBox(
                      width: 15,
                    ),
                    CareerCard(title: 'C.EARN', value: '104'),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 11),
                  padding: wrapPadding,
                  decoration: BoxDecoration(
                    borderRadius: wrapBorder,
                    color: AppColor.wrap,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Schedule ( Today )',
                        style: TextStyle(fontSize: 22),
                      ),
                      StudySchedule(
                        time: 'On going',
                        subject: 'Mobile Programming',
                      ),
                      StudySchedule(
                        time: '13:00-16:00',
                        subject: 'Non Relational Database',
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 14),
                Text(
                  'What\'s New',
                  style: TextStyle(fontSize: 22),
                ),
                SizedBox(height: 14),
                Container(
                  decoration: BoxDecoration(
                      color: AppColor.wrap, borderRadius: wrapBorder),
                  child: Stack(
                    children: [
                      WhatNewsCard(),
                      Positioned(
                        left: 154,
                        bottom: 10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '7 Oct - 9 Oct 2022',
                              style: TextStyle(fontSize: 14),
                            ),
                            Text(
                              'สนามตะกร้อ มหาวิทยาลัยบูรพา',
                              style: TextStyle(fontSize: 11),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 14),
                Container(
                  decoration: BoxDecoration(
                      color: AppColor.wrap, borderRadius: wrapBorder),
                  child: Stack(
                    children: [
                      WhatNewsCard(),
                      Positioned(
                        left: 154,
                        bottom: 10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '7 Oct - 9 Oct 2022',
                              style: TextStyle(fontSize: 14),
                            ),
                            Text(
                              'สนามตะกร้อ มหาวิทยาลัยบูรพา',
                              style: TextStyle(fontSize: 11),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
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
              print(index);
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

  Row WhatNewsCard() {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          child: Image.network(
            'https://media.discordapp.net/attachments/1056647554294624356/1069241549990412409/wn1.jpg',
            width: 141,
          ),
        ),
        SizedBox(
          width: 14,
        ),
        Flexible(
          child: Text(
            'WWJ เจ้าของเพลงดัง "จีบอยู่เผื่อไม่รู้" แต่ถ้าอยากให้เค้ารู้ก็แท็กชวนเค้ามางาน Long do music festival ด้วยกันสิ!',
            maxLines: 3,
            softWrap: false,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 13),
          ),
        )
      ],
    );
  }

  Padding StudySchedule({required String time, required String subject}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: Row(
        children: [Text(time), Text(' - ' + subject)],
      ),
    );
  }

  Expanded CareerCard({required String title, required String value}) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(top: 11),
        decoration:
            BoxDecoration(color: AppColor.wrap, borderRadius: wrapBorder),
        padding: EdgeInsets.only(right: 11, left: 11, top: 26, bottom: 26),
        child: Column(
          children: [
            Text(
              title,
              style: TextStyle(color: AppColor.subText, fontSize: 20),
            ),
            Text(
              value,
              style: TextStyle(color: AppColor.normalText, fontSize: 24),
            )
          ],
        ),
      ),
    );
  }
}
