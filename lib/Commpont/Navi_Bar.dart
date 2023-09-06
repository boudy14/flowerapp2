// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../screens/Home_Page.dart';
import '../screens/Sec_Page.dart';

class Page extends StatefulWidget {
  const Page({super.key});

  @override
  State<Page> createState() => _PageState();
}

class _PageState extends State<Page> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
            activeColor: Colors.black,
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
                  label: "Cart")
            ]),
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
