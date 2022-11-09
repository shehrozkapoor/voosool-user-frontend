import 'dart:ui';
import 'package:flutter/material.dart';
import '../../../theme.dart';
import 'components/first_body_container.dart';
import 'components/footer.dart';
import 'components/header_container.dart';
import 'components/lower_body_container.dart';
import 'components/middle_body_container.dart';
import 'components/responsive_layout_screen.dart';

class WebsiteHomeScreen extends StatefulWidget {
  const WebsiteHomeScreen({Key? key}) : super(key: key);

  @override
  _WebsiteHomeScreenState createState() => _WebsiteHomeScreenState();
}

class _WebsiteHomeScreenState extends State<WebsiteHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Center(
                child: Text(
                  "Voosol",
                  style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w900,
                      color: logoColor),
                ),
              ),
            ),
          ],
        ),
      ),
      body: ResponsiveLayout(
        tiny: Container(color: Colors.red,),
        phone: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                const HeaderContainer(),
                // BodyContainer(),
                const FirstBodyContainerPart(),
                const MiddleBodyContainerPart(),
                const SizedBox(
                  height: 70,
                ),
                const LowerBodyContainerPart(),
                const SizedBox(
                  height: 30,
                ),
                Footer(),
              ],
            ),
          ),
        ),
        tablet: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                const HeaderContainer(),
                // BodyContainer(),
                const FirstBodyContainerPart(),
                const MiddleBodyContainerPart(),
                const SizedBox(
                  height: 70,
                ),
                const LowerBodyContainerPart(),
                const SizedBox(
                  height: 30,
                ),
                Footer(),
              ],
            ),
          ),
        ),
        // largeTablet: SingleChildScrollView(
        //   child: SafeArea(
        //     child: Column(
        //       children: [
        //         const HeaderContainer(),
        //         // BodyContainer(),
        //         const FirstBodyContainerPart(),
        //         const MiddleBodyContainerPart(),
        //         const SizedBox(
        //           height: 70,
        //         ),
        //         const LowerBodyContainerPart(),
        //         const SizedBox(
        //           height: 30,
        //         ),
        //         Footer(),
        //       ],
        //     ),
        //   ),
        // ),
        computer: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                const HeaderContainer(),
                // BodyContainer(),
                const FirstBodyContainerPart(),
                const MiddleBodyContainerPart(),
                const SizedBox(
                  height: 70,
                ),
                const LowerBodyContainerPart(),
                const SizedBox(
                  height: 30,
                ),
                Footer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
