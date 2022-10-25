import 'package:flutter/material.dart';
import 'package:voosool_flutter/screens/desktop_web_view/home.dart';
import 'package:voosool_flutter/screens/mobile_view/about_screen.dart';
import 'package:voosool_flutter/screens/mobile_view/food_item.dart';
import 'package:voosool_flutter/screens/mobile_view/forget_psasword.dart';
import 'package:voosool_flutter/screens/mobile_view/home_location_screen.dart';
import 'package:voosool_flutter/screens/mobile_view/home_view.dart';
import 'package:voosool_flutter/screens/mobile_view/login_screen.dart';
import 'package:voosool_flutter/screens/mobile_view/signup_form.dart';
import 'package:voosool_flutter/screens/splash_screen.dart';
import 'package:voosool_flutter/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Vosool',
      theme: ThemeData(
        primaryColor: primary,
      ),
      home: const AboutScreen(),
    );
  }
}
