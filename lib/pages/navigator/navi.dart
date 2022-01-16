import 'dart:async';

import 'package:exam/pages/homepage/home.dart';
import 'package:exam/pages/newspage/news.dart';
import 'package:exam/pages/profile/switch_profile.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class NaviPage extends StatefulWidget {
  const NaviPage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<NaviPage> {
  int currentPage = 1;
  GlobalKey bottomNavigationkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(title: Text("Bottom Nav Bar")),
        body: SizedBox.expand(child: _getPage(currentPage)),
        // body: indexPage[_currentIndex],
        bottomNavigationBar: FancyBottomNavigation(
          tabs: [
            TabData(iconData: Icons.library_books, title: "News".tr),
            TabData(iconData: Icons.home, title: "Home".tr),
            TabData(iconData: Icons.person, title: "Profile".tr)
          ],
          initialSelection: 1,
          key: bottomNavigationkey,
          onTabChangedListener: (position) {
            setState(() {
              currentPage = position;
            });
          },
        ));
  }

  _getPage(int page) {
    switch (page) {
      case 0:
        return const NewsPage();
      case 1:
        return const HomePage();
      default:
        return const SwitchPage();
    }
  }
}
