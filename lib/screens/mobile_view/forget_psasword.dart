import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:voosool_flutter/screens/mobile_view/change_password.dart';
import 'package:voosool_flutter/theme.dart';
import 'package:voosool_flutter/utils/components.dart';
import 'package:voosool_flutter/utils/functions.dart';

class ForgetPassword extends StatefulWidget {
  ForgetPassword({super.key});
  bool otpSent = false;

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final _formKey = GlobalKey<FormState>();

  void SendOtp() {
    widget.otpSent = true;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20),
              padding: const EdgeInsets.all(50),
              alignment: Alignment.topLeft,
              height: MediaQuery.of(context).size.height * .85,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: primary,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    widget.otpSent
                        ? CustomField("Enter OTP", (value) => {})
                        : CustomField("Email or Phone", (value) => {}),
                    Container(
                      width: 200,
                      margin: const EdgeInsets.only(top: 10),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                      ),
                      child: widget.otpSent
                          ? ElevatedButton(
                              onPressed: () => {
                                    NextScreen(
                                      context,
                                      ChangePassword(),
                                    )
                                  },
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                ),
                                backgroundColor: MaterialStateColor.resolveWith(
                                  (states) => Colors.black,
                                ),
                              ),
                              child: const Text("Validate"))
                          : ElevatedButton(
                              onPressed: () => {SendOtp()},
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                ),
                                backgroundColor: MaterialStateColor.resolveWith(
                                  (states) => Colors.black,
                                ),
                              ),
                              child: const Text("Send OTP")),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 0,
              child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * .45,
                height: 70,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(
                    Radius.circular(40),
                  ),
                ),
                child: const Text(
                  "Forgot Password",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
