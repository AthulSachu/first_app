import 'package:first_app/style/app_color_style.dart';
import 'package:first_app/style/app_text_style.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Homepage",
          style: appTextStyle(30, AppColorStyle.primary, FontWeight.w700),
        ),
      ),
    );
  }
}
