import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'AppColor.dart';

void main() {
  var app = MaterialApp(
      theme: ThemeData(
          fontFamily: 'CSChatThaiUI',
          textTheme:
              TextTheme(bodyText2: TextStyle(color: AppColor.normalText))),
      home: Scaffold(
        backgroundColor: AppColor.body,
        appBar: null,
        body: SafeArea(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 15, top: 20, right: 15),
                padding: const EdgeInsets.all(11),
                decoration: BoxDecoration(
                    color: AppColor.wrap,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 60,
                      backgroundImage: NetworkImage(
                          'https://media.discordapp.net/attachments/1056647554294624356/1069000163470884987/image.png'),
                    ),
                    SizedBox(
                      width: 26,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Jakkrit Chaopron',
                            style: TextStyle(fontSize: 22)),
                        Text('62160246@go.buu.ac.th',
                            style: TextStyle(
                                fontSize: 14, color: AppColor.subText))
                      ],
                    )
                  ],
                ),
              ),
              Container()
            ],
          ),
        ),
      ));

  runApp(app);
}
