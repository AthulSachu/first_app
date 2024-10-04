import 'package:first_app/style/app_color_style.dart';
import 'package:first_app/style/app_text_style.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Cart",
          style: appTextStyle(30, AppColorStyle.primary, FontWeight.w700),
        ),
      ),
    );
  }
}
