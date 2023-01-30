import 'package:flutter/material.dart';
import 'package:reg_buu_62160246/screens/MainScreen.dart';
import './styles/AppColor.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'CSChatThaiUI',
        textTheme: TextTheme(
          bodyText2: TextStyle(color: AppColor.normalText),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const MainScreen(),
    );
  }
}
