import 'package:flutter/material.dart';

class LogoutScreen extends StatelessWidget {
  const LogoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Center(
          child: Text(
        "Logout ;(",
        style: TextStyle(
          fontSize: 50,
        ),
      )),
    );
  }
}
