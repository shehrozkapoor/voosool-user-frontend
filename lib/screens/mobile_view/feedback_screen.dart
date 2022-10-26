import 'package:flutter/material.dart';

import '../../theme.dart';

class FeedbackScreen extends StatefulWidget {
  const FeedbackScreen({Key? key}) : super(key: key);

  @override
  State<FeedbackScreen> createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      body: SafeArea(
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
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const FeedbackScreen()));
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
                        color: Colors.black,
                        fontSize: 16),
                  )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.star_border, color: Color(0xff545454), size: 30,),
                Icon(Icons.star_border, color: Color(0xff545454), size: 30,),
                Icon(Icons.star_border, color: Color(0xff545454), size: 30,),
                Icon(Icons.star_border, color: Color(0xff545454), size: 30,),
                Icon(Icons.star_border, color: Color(0xff545454), size: 30,),
              ],
            ),
            const SizedBox(height: 12,),
            Container(
              height: 137.61,
              width: 214.94,
              padding: const EdgeInsets.only(left: 12, top: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                  color: const Color(0xffD9D9D9),
            ),
              child: Wrap(
                children: [
                  Text("Lorem Ipsum Hello jjk dfsadf sdfsa")
                ],
              ),
            ),
            const SizedBox(height: 43.9,),
            MaterialButton(onPressed: (){},
            color: logoColor,
              minWidth: 131.65,
              height: 27,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
              child: const Text("Feedback"),
            )
          ],
        ),
      ),
    );
  }
}
