import 'package:flutter/material.dart';
import 'package:voosool_flutter/theme.dart';
import 'package:voosool_flutter/utils/components.dart';

class FoodDetail extends StatelessWidget {
  const FoodDetail({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Icon(Icons.screen_share, color: Colors.black),
          Icon(Icons.card_giftcard, color: Colors.black),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              width: size.width,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: primary,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Image.asset("assets/product3.png",
                            width: size.width, height: 150, fit: BoxFit.cover),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Family pack",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text("6\$"),
                              Text("4.3"),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(20),
                          child: const Text(
                              "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut"),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Extras(
                          context,
                          size,
                          "Choose complementry",
                          [
                            CustomCheckbox(text: "Fries"),
                            CustomCheckbox(text: "Rice"),
                          ],
                        ),
                        Extras(
                          context,
                          size,
                          "Choose complementry",
                          [
                            CustomCheckbox(text: "Fries"),
                            CustomCheckbox(text: "Rice"),
                          ],
                        ),
                        Extras(
                          context,
                          size,
                          "Choose complementry",
                          [
                            CustomCheckbox(text: "Fries"),
                            CustomCheckbox(text: "Rice"),
                          ],
                        ),
                        Extras(
                          context,
                          size,
                          "Choose complementry",
                          [
                            CustomCheckbox(text: "Fries"),
                            CustomCheckbox(text: "Rice"),
                          ],
                        ),
                        Extras(
                          context,
                          size,
                          "Choose complementry",
                          [
                            CustomCheckbox(text: "Fries"),
                            CustomCheckbox(text: "Rice"),
                          ],
                        ),
                        Extras(
                          context,
                          size,
                          "Choose complementry",
                          [
                            CustomCheckbox(text: "Fries"),
                            CustomCheckbox(text: "Rice"),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 30,
            left: (MediaQuery.of(context).size.width / 2) -
                MediaQuery.of(context).size.width * .3,
            child: Center(
              child: Container(
                width: MediaQuery.of(context).size.width * .6,
                child: ElevatedButton(
                  onPressed: () => {},
                  child: const Text("Add to Cart"),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget Extras(
      BuildContext context, Size size, String title, List<Widget> items) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 20, top: 10, bottom: 10),
          width: size.width,
          child: Text(title),
        ),
        Container(
          width: size.width,
          margin: EdgeInsets.only(left: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: items,
          ),
        )
      ],
    );
  }
}
