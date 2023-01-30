import 'package:flutter/material.dart';
import 'package:reg_buu_62160246/AppStyle.dart';
import 'AppColor.dart';

class StudentScreen extends StatelessWidget {
  const StudentScreen({super.key});

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
                Row(
                  children: [],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Expanded CareerCard({required String title, required String value}) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(top: 11),
        decoration: BoxDecoration(
            color: AppColor.wrap, borderRadius: AppStyle.wrapBorder),
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
