import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'Home_Page.dart';
import 'Sec_Page.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          activeColor: Color(0xff4B194F),
          inactiveColor: Colors.grey,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "asset/Image/house.svg",
                ),
                label: "Home"),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "asset/Image/Catalog.svg",
              ),
              label: "Catalog",
            ),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "asset/Image/Chat.svg",
                ),
                label: "Chat"),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "asset/Image/marketcar3.svg",
                ),
                label: "Cart"),
          ],
        ),
        tabBuilder: (context, index) {
          switch (index) {
            case 0:
              return CupertinoTabView(
                builder: (context) {
                  return CupertinoPageScaffold(child: HomePage());
                },
              );
            case 1:
              return CupertinoTabView(
                builder: (context) {
                  return CupertinoPageScaffold(child: Sec_Page());
                },
              );
          }

          return Container();
        });
  }
}
