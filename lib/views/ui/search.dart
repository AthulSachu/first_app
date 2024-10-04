import 'package:first_app/style/app_color_style.dart';
import 'package:first_app/style/app_text_style.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Search",
          style: appTextStyle(30, AppColorStyle.primary, FontWeight.w700),
        ),
      ),
    );
  }
}
