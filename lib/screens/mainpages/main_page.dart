import 'package:flutter/material.dart';
import 'package:fluttermasterproject/iconsProvider/my_icons_icons.dart';
import 'package:fluttermasterproject/screens/mainpages/profile_page.dart';
import 'package:fluttermasterproject/screens/mainpages/search_page.dart';

import 'bar_page.dart';
import 'home_page.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    HomePage(),
    BarPage(),
    SearchPage(),
    ProfilePage(),
  ];

  int currentIndex = 0;

  void onTap(int index)
  {
    setState((){
      currentIndex = index ;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        unselectedItemColor: Colors.black26,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        selectedItemColor: Colors.black,
        onTap: onTap,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                MyIcons.home_simple,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                MyIcons.align_bottom,
              ),
              label: 'Bar'),
          BottomNavigationBarItem(
              icon: Icon(
                MyIcons.magnifier,
              ),
              label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(
                MyIcons.user,
              ),
              label: 'Profile'),
        ],
      ),
    );
  }
}
