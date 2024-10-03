import 'package:first_app/style/app_color_style.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class AppBarView extends StatelessWidget implements PreferredSizeWidget {
  const AppBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColorStyle.bgColor,
      title: Row(
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              Container(
                height: 55,
                width: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColorStyle.backColor,
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Icon(
                    FluentSystemIcons.ic_fluent_alert_regular,
                    size: 30,
                    color: AppColorStyle.whiteColor,
                  ),
                ),
              ),
              Container(
                height: 8,
                width: 8,
                margin: const EdgeInsets.only(top: 14, right: 18),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColorStyle.notificationAlertColor,
                ),
              ),
            ],
          ),
          Container(
            height: 55,
            width: 55,
            margin: const EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColorStyle.backColor,
            ),
            child: TextButton(
              onPressed: () {},
              child: Icon(
                FluentSystemIcons.ic_fluent_search_filled,
                size: 30,
                color: AppColorStyle.whiteColor,
              ),
            ),
          ),
        ],
      ),
      actions: [
        Container(
          height: 55,
          width: 55,
          margin: const EdgeInsets.only(right: 18),
          decoration: BoxDecoration(
            color: AppColorStyle.primary,
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextButton(
            onPressed: () {},
            child: Icon(
              FluentSystemIcons.ic_fluent_qr_code_regular,
              size: 30,
              color: AppColorStyle.blackColor,
            ),
          ),
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
