import 'package:flutter/material.dart';

import 'package:clubfolio/app/screens/discover/view.dart';
import 'package:clubfolio/app/screens/home/view.dart';
import 'package:clubfolio/app/screens/portfolio/view.dart';
import 'package:clubfolio/app/screens/tribe/view.dart';
import 'package:clubfolio/app/utils/utils.dart';

class MainScreen extends StatefulWidget {
  MainScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _page = 0;
  onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  List<Widget> pages = [
    const HomeView(),
    const PortfolioView(),
    const TribeView(),
    const DiscoverView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_page],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: greyColor,
        selectedItemColor: yellowColor,
        unselectedItemColor: lightColor,
        onTap: onPageChanged,
        currentIndex: _page,
        type: BottomNavigationBarType.fixed,
        iconSize: 32,
        items: const [
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 2.0),
              child: Icon(Icons.add_home_outlined),
            ),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 2.0),
              child: Icon(Icons.send_time_extension_outlined),
            ),
            label: 'portfolio',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 2.0),
              child: Icon(Icons.add_comment_outlined),
            ),
            label: 'tribe',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 2.0),
              child: Icon(Icons.saved_search),
            ),
            label: 'discover',
          ),
        ],
      ),
    );
  }
}
