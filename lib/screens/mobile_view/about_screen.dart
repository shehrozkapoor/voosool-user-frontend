import 'package:flutter/material.dart';

import '../../theme.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20.0, left: 8.0),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  )),
            ),
            const SizedBox(
              height: 14,
            ),
            Container(
              alignment: Alignment.center,
              child: const Text(
                "About",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                    fontSize: 30),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 37.0, top: 35),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Rate us in Google Play",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 20),
                  )),
            ),
            const SizedBox(
              height: 18,
            ),
            Divider(
              thickness: 1.5,
              color: primary2,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 37.0, top: 35),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Like us on social media",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 20),
                  )),
            ),
            const SizedBox(
              height: 18,
            ),
            Divider(
              thickness: 1.5,
              color: primary2,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 37.0, top: 35),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Browse on our website",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 20),
                  )),
            ),
            const SizedBox(
              height: 18,
            ),
            Divider(
              thickness: 1.5,
              color: primary2,
            ),
            const SizedBox(
              height: 35,
            ),
            Container(
              alignment: Alignment.center,
              child: const Text(
                "vosool app v.01",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
