import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:voosool_flutter/screens/mobile_view/forget_psasword.dart';
import 'package:voosool_flutter/screens/mobile_view/signup_form.dart';
import 'package:voosool_flutter/theme.dart';
import 'package:voosool_flutter/utils/components.dart';
import 'package:voosool_flutter/utils/functions.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
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
                    CustomField("Email or Phone", (value) => {}),
                    CustomField("Password", (value) => {}),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Forget password? "),
                          GestureDetector(
                            onTap: () {
                              NextScreent(
                                context,
                                ForgetPassword(),
                              );
                            },
                            child: const Text(
                              "Reset",
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 200,
                      margin: const EdgeInsets.only(top: 10),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                      ),
                      child: ElevatedButton(
                          onPressed: () => {},
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
                          child: const Text("Login with Email.")),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10, bottom: 10),
                      child: const Text("Or"),
                    ),
                    SocialSignupButton(
                      "Continue with Google",
                      "assets/google.png",
                    ),
                    SocialSignupButton(
                      "Continue with Facebook",
                      "assets/facebook.png",
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Don't have an account? "),
                          GestureDetector(
                            onTap: () {
                              ReplaceScreen(
                                context,
                                SignupForm(),
                              );
                            },
                            child: const Text(
                              "Signup",
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
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
                  "Login",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
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
