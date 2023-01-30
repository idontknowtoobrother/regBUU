import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:reg_buu_62160246/screens/StudentScreen.dart';
import '../styles/AppColor.dart';
import '../styles/AppStyle.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                  padding: AppStyle.wrapPadding,
                  decoration: BoxDecoration(
                      color: AppColor.wrap, borderRadius: AppStyle.wrapBorder),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        radius: 60,
                        backgroundImage: NetworkImage(
                          'https://media.discordapp.net/attachments/1044634625391218758/1069544459789938718/image.png',
                        ),
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
                  margin: const EdgeInsets.only(top: 11),
                  padding: AppStyle.wrapPadding,
                  decoration: BoxDecoration(
                      color: AppColor.wrap, borderRadius: AppStyle.wrapBorder),
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
                    const SizedBox(
                      width: 15,
                    ),
                    CareerCard(title: 'C.REG', value: '110'),
                    const SizedBox(
                      width: 15,
                    ),
                    CareerCard(title: 'C.EARN', value: '104'),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 11),
                  padding: AppStyle.wrapPadding,
                  decoration: BoxDecoration(
                    borderRadius: AppStyle.wrapBorder,
                    color: AppColor.wrap,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Schedule ( Today )',
                        style: TextStyle(fontSize: 22),
                      ),
                      StudySchedule(
                        time: 'On going',
                        subject: 'Mobile Programming',
                        textStyle: TextStyle(
                          color: AppColor.success,
                        ),
                      ),
                      StudySchedule(
                        time: '13:00-16:00',
                        subject: 'Non Relational Database',
                        textStyle: TextStyle(
                          color: AppColor.warning,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 14),
                const Text(
                  'What\'s New',
                  style: TextStyle(fontSize: 22),
                ),
                const SizedBox(height: 14),
                Container(
                  decoration: BoxDecoration(
                      color: AppColor.wrap, borderRadius: AppStyle.wrapBorder),
                  child: Stack(
                    children: [
                      WhatNewsCard(),
                      Positioned(
                        left: 154,
                        bottom: 10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
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
                const SizedBox(height: 14),
                Container(
                  decoration: BoxDecoration(
                      color: AppColor.wrap, borderRadius: AppStyle.wrapBorder),
                  child: Stack(
                    children: [
                      WhatNewsCard(),
                      Positioned(
                        left: 154,
                        bottom: 10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
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
    );
  }

  Row WhatNewsCard() {
    return Row(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          child: Image.network(
            'https://media.discordapp.net/attachments/1056647554294624356/1069241549990412409/wn1.jpg',
            width: 141,
          ),
        ),
        const SizedBox(
          width: 14,
        ),
        const Flexible(
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

  Padding StudySchedule({
    required String time,
    required String subject,
    required TextStyle textStyle,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: Row(
        children: [
          Text(
            time,
            style: textStyle,
          ),
          Text(' - $subject')
        ],
      ),
    );
  }

  Expanded CareerCard({required String title, required String value}) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(top: 11),
        decoration: BoxDecoration(
            color: AppColor.wrap, borderRadius: AppStyle.wrapBorder),
        padding:
            const EdgeInsets.only(right: 11, left: 11, top: 26, bottom: 26),
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
