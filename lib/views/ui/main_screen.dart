import 'package:first_app/style/app_color_style.dart';
import 'package:first_app/style/app_text_style.dart';
import 'package:first_app/views/shared/app_bar_view.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorStyle.bgColor,
      appBar: const AppBarView(),
      body: Center(
        child: Text(
          "Hello Noob",
          style: appTextStyle(40, AppColorStyle.blackColor, FontWeight.w700),
        ),
      ),
    );
  }
}
