import 'package:flutter/material.dart';
import 'package:voosool_flutter/screens/mobile_view/feedback_screen.dart';

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
      resizeToAvoidBottomInset: false,
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
            InkWell(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (_) {
                      return SingleChildScrollView(
                        child: Dialog(
                          backgroundColor: primary,
                          insetPadding: const EdgeInsets.only(
                             bottom: 50, left: 20, right: 20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(top: 20.0, right: 12.0),
                                child: Align(
                                    alignment: Alignment.topRight,
                                    child: Icon(
                                      Icons.cancel_rounded,
                                      color: Colors.black,
                                      size: 30,
                                    )),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                          const FeedbackScreen()));
                                },
                                child: const Padding(
                                  padding: EdgeInsets.only(left: 15.0, top: 35),
                                  child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        "How was your experience\n with us?",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 22),
                                      )),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 60.0, top: 8),
                                child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "Would you like to give a \n feedback!",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 16),
                                    )),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(
                                    Icons.star_border,
                                    color: Color(0xff545454),
                                    size: 30,
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: Color(0xff545454),
                                    size: 30,
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: Color(0xff545454),
                                    size: 30,
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: Color(0xff545454),
                                    size: 30,
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: Color(0xff545454),
                                    size: 30,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Container(
                                  height: 137.61,
                                  width: 214.94,
                                  padding: const EdgeInsets.only(left: 12, top: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: const Color(0xffD9D9D9),
                                  ),
                                  child: TextFormField(
                                    maxLines: 5,
                                    autofocus: true,
                                    decoration: const InputDecoration(
                                      hintText: "Feedback",
                                      border: InputBorder.none,
                                    ),
                                  )
                              ),
                              const SizedBox(
                                height: 20.9,
                              ),
                              MaterialButton(
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      builder: (_) {
                                        return Dialog(
                                          insetPadding: const EdgeInsets.only(
                                              bottom: 180,
                                              top: 110,
                                              left: 40,
                                              right: 40),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius.circular(25),
                                          ),
                                          child: Column(
                                            children: [
                                              InkWell(
                                                onTap: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                          const AboutScreen()));
                                                },
                                                child: const Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 20.0, right: 20.0),
                                                  child: Align(
                                                      alignment:
                                                      Alignment.topRight,
                                                      child: Icon(
                                                        Icons.cancel_rounded,
                                                        color: Colors.black,
                                                        size: 30,
                                                      )),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 30.0,
                                              ),
                                              const Text(
                                                "Thank you!",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 32,
                                                    fontWeight: FontWeight.w800),
                                              ),
                                              const SizedBox(
                                                height: 50,
                                              ),
                                              Image.asset(
                                                  "assets/feedbacklogo.png")
                                            ],
                                          ),
                                        );
                                      });
                                },
                                color: logoColor,
                                minWidth: 131.65,
                                height: 27,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25)),
                                child: const Text("Feedback"),
                              )
                            ],
                          ),
                        ),
                      );
                    });
              },
              child: const Padding(
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
