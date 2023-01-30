import 'package:flutter/material.dart';
import '../styles/AppColor.dart';
import '../styles/AppStyle.dart';

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
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                        top: 11,
                      ),
                      decoration: BoxDecoration(
                        color: AppColor.wrap,
                        borderRadius: AppStyle.wrapBorder,
                      ),
                      padding: const EdgeInsets.only(
                        right: 42,
                        left: 42,
                        top: 20,
                        bottom: 18,
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/red-blood-cells.png',
                            width: 33,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            'AB',
                            style: TextStyle(
                                color: AppColor.normalText, fontSize: 24),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(
                          top: 11,
                        ),
                        decoration: BoxDecoration(
                          color: AppColor.wrap,
                          borderRadius: AppStyle.wrapBorder,
                        ),
                        padding: const EdgeInsets.only(
                          top: 11,
                          left: 26,
                          bottom: 14,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/identify.png',
                                  width: 43,
                                ),
                                const SizedBox(
                                  width: 7,
                                ),
                                const Flexible(
                                  child: Text(
                                    '14399003000999',
                                    maxLines: 1,
                                    softWrap: false,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(fontSize: 18),
                                    textAlign: TextAlign.center,
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/student-card.png',
                                  width: 40,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Flexible(
                                  child: Text(
                                    '62160246',
                                    softWrap: false,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    style: TextStyle(fontSize: 18),
                                    textAlign: TextAlign.center,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
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
