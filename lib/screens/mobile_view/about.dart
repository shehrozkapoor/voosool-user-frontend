import 'package:flutter/material.dart';
import 'package:voosool_flutter/theme.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size2 = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: primary,
      appBar: AppBar(
        backgroundColor: primary,
        title: Text(
          'About Us',
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
        ),
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: size2.width,
          child: Column(
            children: [
              GestureDetector(
                onTap: () => {},
                child: Container(
                  padding: EdgeInsets.all(20),
                  width: size2.width,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.white, width: 1),
                    ),
                  ),
                  margin: EdgeInsets.only(top: 30),
                  child: Text(
                    "Rate us in Google play",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => {},
                child: Container(
                  width: size2.width,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.white, width: 1),
                    ),
                  ),
                  margin: EdgeInsets.only(top: 30),
                  child: Text(
                    textAlign: TextAlign.center,
                    "Like us on social media",
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => {},
                child: Container(
                  width: size2.width,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.white, width: 1),
                    ),
                  ),
                  margin: EdgeInsets.only(top: 30),
                  child: Text(
                    textAlign: TextAlign.center,
                    "Browse on our website",
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => {},
                child: Container(
                  width: size2.width,
                  padding: EdgeInsets.all(20),
                  // decoration: BoxDecoration(
                  //   border: Border(
                  //     bottom: BorderSide(color: Colors.white, width: 1),
                  //   ),
                  // ),
                  margin: EdgeInsets.only(top: 30),
                  child: Text(
                    textAlign: TextAlign.center,
                    "voosool app v.01",
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
