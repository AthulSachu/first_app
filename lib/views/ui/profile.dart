import 'package:first_app/style/app_color_style.dart';
import 'package:first_app/style/app_text_style.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Profile",
          style: appTextStyle(30, AppColorStyle.primary, FontWeight.w700),
        ),
      ),
    );
  }
}
