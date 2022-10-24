// import 'package:animated_splash_screen/animated_splash_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:page_transition/page_transition.dart';
// import 'package:voosool_flutter/screens/mobile_view/login_screen.dart';
// import 'package:voosool_flutter/theme.dart';
//
// class SplashScreen extends StatelessWidget {
//   const SplashScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     var logos = [
//       Expanded(
//         child: Image.asset(
//           "assets/logo.png",
//           fit: BoxFit.contain,
//           width: 100,
//         ),
//       ),
//       Expanded(
//         child: Image.asset(
//           "assets/text_logo.png",
//           fit: BoxFit.contain,
//           width: 100,
//         ),
//       ),
//     ];
//     return AnimatedSplashScreen(
//       splash: Expanded(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: logos,
//         ),
//       ),
//       splashTransition: SplashTransition.fadeTransition,
//       pageTransitionType: PageTransitionType.bottomToTop,
//       nextScreen: const LoginScreen(),
//       backgroundColor: primary,
//     );
//   }
// }

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:voosool_flutter/screens/mobile_view/login_screen.dart';
import 'package:voosool_flutter/theme.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (ctx) => const LoginScreen())));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: primary,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          Center(
            child: Image.asset("assets/text_logo.png", color: logoColor, fit: BoxFit.contain,),
          )
        ],
      ),
    );
  }
}

