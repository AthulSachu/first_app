import 'package:first_app/Controller/main_screen_notifier.dart';
import 'package:first_app/style/app_color_style.dart';
import 'package:first_app/views/shared/app_bar_view.dart';
import 'package:first_app/views/shared/nav_bar_widget.dart';
import 'package:first_app/views/ui/cart.dart';
import 'package:first_app/views/ui/home_page.dart';
import 'package:first_app/views/ui/profile.dart';
import 'package:first_app/views/ui/search.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  List<Widget> pageList = const [
    HomePage(),
    Search(),
    HomePage(),
    Cart(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenNotifier>(
      builder: (context, mainScreenNotifier, child) {
        return Scaffold(
          backgroundColor: AppColorStyle.bgColor,
          appBar: const AppBarView(),
          body: pageList[mainScreenNotifier.pageIndex],
          bottomNavigationBar: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColorStyle.blackColor,
                ),
                child: SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      NavBarWidget(
                        onTap: () {
                          mainScreenNotifier.pageIndex = 0;
                        },
                        icon: mainScreenNotifier.pageIndex == 0
                            ? FluentSystemIcons.ic_fluent_home_filled
                            : FluentSystemIcons.ic_fluent_home_regular,
                      ),
                      NavBarWidget(
                        onTap: () {
                          mainScreenNotifier.pageIndex = 1;
                        },
                        icon: mainScreenNotifier.pageIndex == 1
                            ? FluentSystemIcons.ic_fluent_search_filled
                            : FluentSystemIcons.ic_fluent_search_regular,
                      ),
                      NavBarWidget(
                        onTap: () {
                          mainScreenNotifier.pageIndex = 2;
                        },
                        icon: mainScreenNotifier.pageIndex == 2
                            ? FluentSystemIcons.ic_fluent_add_circle_filled
                            : FluentSystemIcons.ic_fluent_add_circle_regular,
                      ),
                      NavBarWidget(
                        onTap: () {
                          mainScreenNotifier.pageIndex = 3;
                        },
                        icon: mainScreenNotifier.pageIndex == 3
                            ? Icons.shopping_cart
                            : Icons.shopping_cart_outlined,
                      ),
                      NavBarWidget(
                        onTap: () {
                          mainScreenNotifier.pageIndex = 4;
                        },
                        icon: mainScreenNotifier.pageIndex == 4
                            ? FluentSystemIcons.ic_fluent_person_filled
                            : FluentSystemIcons.ic_fluent_person_regular,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
