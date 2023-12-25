import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

import 'home_screen.dart';

class Screens extends StatefulWidget {
  const Screens({super.key});

  @override
  State<Screens> createState() => _ScreensState();
}

int currentIndex = 0;
List<Widget> myList = <Widget>[
  HomeScreen(),
  Container(),
  Container(),
  Container(),
];

class _ScreensState extends State<Screens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: myList.elementAt(currentIndex),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 7),
            child: GNav(
                tabBackgroundColor: Colors.blueAccent,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 18),
                iconSize: 24,
                rippleColor: Colors.grey,
                hoverColor: Colors.grey,
                duration: const Duration(milliseconds: 500),
                activeColor: Colors.white,
                color: Colors.black,
                gap: 10,
                tabs: const [
                  GButton(
                    icon: Icons.home,
                    text: 'Home',
                  ),
                  GButton(
                    icon: LineIcons.shoppingBag,
                    text: 'Cart',
                  ),
                  GButton(
                    icon: LineIcons.heart,
                    text: 'Wishlist',
                  ),
                  GButton(
                    icon: Icons.person,
                    text: 'Profile',
                  ),
                ],
                selectedIndex: currentIndex,
                onTabChange: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                }),
          ),
        ),
      ),
    );
  }
}
