import 'package:flutter/material.dart';
import 'package:voosool_flutter/theme.dart';
import 'package:voosool_flutter/utils/components.dart';

class MyInformation extends StatelessWidget {
  const MyInformation({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size2 = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: primary,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: primary,
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  width: size2.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset("assets/product1.png"),
                      ),
                      const Text(
                        "Hello, Dave!",
                        style: TextStyle(
                            fontSize: 34, fontWeight: FontWeight.w800),
                      )
                    ],
                  ),
                ),
                CustomField2("Name", (value) => {}),
                CustomField2("Email", (value) => {}),
                CustomField2("Phone", (value) => {}),
                CustomField2("Password", (value) => {}),
                CustomField2("Address", (value) => {}),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      // width: size2.width * .2,
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.all(20),
                      child: ElevatedButton(
                        onPressed: () => {},
                        style: ButtonStyle(
                            backgroundColor: MaterialStateColor.resolveWith(
                                (states) => primary),
                            elevation: MaterialStateProperty.resolveWith(
                                (states) => 0)),
                        child: Text(
                          "Logout",
                          style: TextStyle(fontSize: 24, color: Colors.black),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () => {},
                      child: Text("Save"),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
