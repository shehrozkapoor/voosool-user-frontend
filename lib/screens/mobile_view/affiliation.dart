import 'package:flutter/material.dart';
import 'package:voosool_flutter/theme.dart';

class Affiliation extends StatelessWidget {
  const Affiliation({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size2 = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: primary,
      appBar: AppBar(
        backgroundColor: primary,
        title: Text(
          'Share and Earn',
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
        ),
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: size2.width,
              height: size2.height * .3,
              child: Image.asset("assets/affilation.png"),
            ),
            Container(
              width: size2.width * .7,
              child: Text(
                "Get 3 free deliveries for each friend you refer",
                style: TextStyle(fontSize: 24),
              ),
            ),
            Container(
              width: size2.width * .75,
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.white, width: 1)),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("5DFG6T33"),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Text(
                        "Share Code",
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Column(
                  children: const [
                    Text("How it works?"),
                    Text(
                        "Share your code with friends and they’lleach get free delivery on their first 3orders."),
                    Text(
                        "You get 3 free deliveries every tine a friend places their first order.")
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
