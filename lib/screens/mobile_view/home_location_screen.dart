import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../../theme.dart';
import 'HomeLocationScreens/home_page.dart';
import 'login_screen.dart';

class HomeLocationScreen extends StatefulWidget {
  const HomeLocationScreen({Key? key}) : super(key: key);

  @override
  State<HomeLocationScreen> createState() => _HomeLocationScreenState();
}

class _HomeLocationScreenState extends State<HomeLocationScreen> {

  int _selectedIndex = 0;

  List pages = [
    const HomeLocation(),
    const LoginScreen(),
    const HomeLocation(),
    const LoginScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      body: pages[_selectedIndex],

      // TODO Bottom Google NavBar
      // bottomNavigationBar: Container(
      //   width: MediaQuery.of(context).size.width,
      //   margin: const EdgeInsets.only(bottom: 3),
      //   decoration: BoxDecoration(
      //     color: Colors.black,
      //     borderRadius: BorderRadius.circular(20),
      //   ),
      //   height: 60,
      //   child: Row(
      //     children: [
      //       BottomNavigationBarItem(icon: Icon(Icons.home))
      //     ],
      //   )
      // )

      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13.0, vertical: 5.0),
          child: GNav(
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.black,
            tabBackgroundColor: Colors.white,
            gap: 8.0,
            padding: const EdgeInsets.all(14),
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            tabs: const [
              GButton(text: 'Home', icon: Icons.home),
              GButton(text: 'Browse', icon: Icons.manage_search),
              GButton(text: 'Cart', icon: Icons.card_travel_sharp),
              GButton(text: 'Account', icon: Icons.account_circle_outlined),
            ],
          ),
        ),
      ),
    );
  }
}
