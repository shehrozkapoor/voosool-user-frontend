import 'package:flutter/material.dart';
import 'package:voosool_flutter/theme.dart';
import 'package:voosool_flutter/utils/components.dart';

class FoodItems extends StatelessWidget {
  const FoodItems({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(Icons.screen_share),
          Icon(Icons.card_giftcard),
        ],
        backgroundColor: primary2,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: primary2,
          width: size.width,
          child: Column(
            children: [
              Center(
                child: Image.asset("assets/product3.png"),
              ),
              Container(
                padding: const EdgeInsets.all(
                  10,
                ),
                margin: EdgeInsets.only(left: 30),
                width: size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Macdonald",
                    ),
                    Text("(Dubai)"),
                    Text("Open until 11:00 PM"),
                  ],
                ),
              ),
              Container(
                color: primary,
                child: FoodMenus(context, foods: List.empty()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
