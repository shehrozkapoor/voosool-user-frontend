import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:voosool_flutter/screens/mobile_view/checkout.dart';
import 'package:voosool_flutter/screens/mobile_view/home.dart';

import 'package:page_transition/page_transition.dart';
import 'package:voosool_flutter/screens/mobile_view/signup_form.dart';
import 'package:voosool_flutter/theme.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var logos = [
      Expanded(
        child: Image.asset(
          "assets/logo.png",
          fit: BoxFit.contain,
          width: 100,
        ),
      ),
      Expanded(
        child: Image.asset(
          "assets/text_logo.png",
          fit: BoxFit.contain,
          width: 100,
        ),
      ),
    ];
    return AnimatedSplashScreen(
      splash: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: logos,
        ),
      ),
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.bottomToTop,
      nextScreen: Checkout(),
      backgroundColor: primary,
    );
  }
}
