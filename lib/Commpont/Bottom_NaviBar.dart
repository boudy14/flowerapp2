import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../screens/Home_Page.dart';
import '../screens/Sec_Page.dart';

class NaviBar extends StatefulWidget {
  @override
  State<NaviBar> createState() => _NaviBarState();
}

class _NaviBarState extends State<NaviBar> {
  int _selectedIndex = 0;
  void _navigatorbottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // void _selectedtab(String tabIthem, int index) {
  //   if (tabIthem == _selectedIndex) {
  //     _navigatorbottomBar[tabIthem]
  //         .currentState
  //         .popUntil((Route) => Route.isfrist);
  //   }
  //   setState(() {
  //     _currentpage = _pages[index];
  //     _selectedIndex = index;
  //   });
  // }

  final List<Widget> _pages = [HomePage(), Sec_Page()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _navigatorbottomBar,
        items: [
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
        ],
        selectedItemColor: Color(0xff4B194F),
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
