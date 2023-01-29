import 'package:flutter/material.dart';
import 'package:reg_buu_62160246/HomeScreen.dart';
import 'AppColor.dart';

void main() {
  var app = MaterialApp(
      theme: ThemeData(
          fontFamily: 'CSChatThaiUI',
          textTheme:
              TextTheme(bodyText2: TextStyle(color: AppColor.normalText))),
      home: HomeScreen());

  runApp(app);
}
