import 'package:first_app/style/app_color_style.dart';
import 'package:flutter/material.dart';

class NavBarWidget extends StatelessWidget {
  const NavBarWidget({
    super.key,
    this.onTap,
    this.icon,
  });

  final void Function()? onTap;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 50,
        width: 50,
        child: Icon(
          icon,
          color: AppColorStyle.primary,
        ),
      ),
    );
  }
}
