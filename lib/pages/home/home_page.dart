import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restourant_delivery/pages/account/account_page.dart';
import 'package:restourant_delivery/pages/cart/cart_history_page.dart';
import 'package:restourant_delivery/pages/cart/cart_page.dart';
import 'package:restourant_delivery/pages/home/main_food_page.dart';
import 'package:restourant_delivery/utils/colors.dart';
// import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  List pages = [
    const MainFoodPage(),
    CartPage(),
    CartHistory(),
    AccountPage(),
  ];

  void onTopNav(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: AppColors.mailnColor,
          unselectedItemColor: Colors.black45,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          currentIndex: _selectedIndex,
          onTap: onTopNav,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.cart),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: 'History',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person),
              label: 'Profile',
            ),
          ]),
    );
  }
}
