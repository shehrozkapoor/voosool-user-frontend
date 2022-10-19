import 'package:flutter/material.dart';
import 'package:voosool_flutter/screens/mobile_view/forget_psasword.dart';
import 'package:voosool_flutter/screens/mobile_view/login_screen.dart';
import 'package:voosool_flutter/screens/mobile_view/signup_form.dart';
import 'package:voosool_flutter/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vasool',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}
