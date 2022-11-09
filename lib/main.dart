import 'package:flutter/material.dart';
import 'package:voosool_flutter/screens/website_view/screens/home_screen.dart';
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
      home: const WebsiteHomeScreen(),
    );
  }
}
