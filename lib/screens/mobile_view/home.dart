import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:voosool_flutter/screens/mobile_view/browse_screen.dart';
import 'package:voosool_flutter/screens/mobile_view/cart.dart';
import 'package:voosool_flutter/screens/mobile_view/home_view.dart';
import 'package:voosool_flutter/screens/mobile_view/user_account.dart';
import 'package:voosool_flutter/theme.dart';
import 'package:voosool_flutter/utils/components.dart';

class Homepage extends StatefulWidget {
  Homepage({super.key});
  int idx = 0;
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      appBar: AppBar(
        actions: [
          Icon(Icons.screen_share),
          Icon(Icons.card_giftcard),
        ],
        primary: true,
        backgroundColor: primary,
        shadowColor: primary,
        title: Text("Now, Dubai"),
        centerTitle: true,
      ),
      bottomNavigationBar: FloatingNavbar(
        onTap: (int val) {
          setState(() {
            widget.idx = val;
          });
        },
        currentIndex: widget.idx,
        items: [
          FloatingNavbarItem(icon: Icons.home, title: 'Home'),
          FloatingNavbarItem(icon: Icons.search_rounded, title: 'Browse'),
          FloatingNavbarItem(icon: Icons.shopping_bag, title: 'Cart'),
          FloatingNavbarItem(icon: Icons.verified_user_sharp, title: 'Account'),
        ],
      ),
      extendBody: true,
      body: SingleChildScrollView(
        child: decideTab(widget.idx),
      ),
    );
  }

  Widget decideTab(int idx) {
    List<Widget> screens = [HomeView(), BrowseScreen(), Cart(), UserAccount()];
    return screens[idx];
  }
}
