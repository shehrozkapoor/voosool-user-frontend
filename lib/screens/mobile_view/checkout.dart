import 'package:flutter/material.dart';
import 'package:voosool_flutter/screens/mobile_view/delivery_process.dart';
import 'package:voosool_flutter/theme.dart';
import 'package:voosool_flutter/utils/components.dart';

import '../../utils/functions.dart';

class Checkout extends StatelessWidget {
  const Checkout({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size2 = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        // top: false,
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(10),
            width: size2.width,
            child: Column(
              children: [
                Text(
                  "Checkout",
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.w900),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.all(20),
                      child: const Text(
                        "Delivery",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(20),
                      child: const Text(
                        "Pick-up",
                        style: TextStyle(
                          // decoration: TextDecoration.underline,r
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  child: Text(
                    "Address Details",
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                Container(
                  width: size2.width * .9,
                  child: ElevatedButton(
                    onPressed: () => {},
                    child: Text("Sharjah dubai street 11 house A"),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith(
                          (states) => Colors.white),
                      elevation:
                          MaterialStateProperty.resolveWith((states) => 0),
                      foregroundColor: MaterialStateProperty.resolveWith(
                          (states) => Colors.black),
                      side: MaterialStateBorderSide.resolveWith(
                        (states) => BorderSide(color: Colors.black, width: 2),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    margin: EdgeInsets.all(20),
                    child: ElevatedButton(
                      onPressed: () => {},
                      child: Text("Edit"),
                      style: ButtonStyle(
                          alignment: Alignment.centerRight,
                          backgroundColor: MaterialStateColor.resolveWith(
                              (states) => Colors.black)),
                    ),
                  ),
                ),
                Container(
                  width: size2.width,
                  child: Text(
                    "Delivery Time",
                    style: TextStyle(fontSize: 28),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () => {},
                        child: Text("Standard"),
                        style: ButtonStyle(
                            foregroundColor: MaterialStateColor.resolveWith(
                                (states) => Colors.black),
                            backgroundColor: MaterialStateColor.resolveWith(
                                (states) => primary)),
                      ),
                      ElevatedButton(
                        onPressed: () => {},
                        child: Text("Fast"),
                        style: ButtonStyle(
                            foregroundColor: MaterialStateColor.resolveWith(
                                (states) => Colors.black),
                            backgroundColor: MaterialStateColor.resolveWith(
                                (states) => primary)),
                      ),
                      ElevatedButton(
                        onPressed: () => {},
                        child: Text("Priority"),
                        style: ButtonStyle(
                            foregroundColor: MaterialStateColor.resolveWith(
                                (states) => Colors.black),
                            backgroundColor: MaterialStateColor.resolveWith(
                                (states) => primary)),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: size2.width,
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  child: const Text(
                    "Items in Cart",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Container(
                  width: size2.width,
                  height: size2.height * .15,
                  child: GridView.count(
                    crossAxisCount: 3,
                    children: List.generate(
                      3,
                      (index) {
                        return Food(
                            context, "Product 1", "assets/restaurant.png");
                      },
                    ),
                  ),
                ),
                Container(
                  width: size2.width,
                  child: Text("Promo Code"),
                ),
                Container(
                  width: size2.width * .8,
                  height: 50,
                  margin: EdgeInsets.all(10),
                  child: TextField(
                      decoration: InputDecoration(
                          hintText: "Promo Code",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)))),
                ),
                Container(
                  width: size2.width,
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  child: Text(
                    "Subtotal",
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Promocode"),
                      Text("\$5"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Fees"),
                      Text("\$5"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Tax"),
                      Text("\$5"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Delivery Fee"),
                      Text("\$5"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total"),
                      Text("\$5"),
                    ],
                  ),
                ),
                Text("Payment method"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () => {},
                      child: Text("Credit Cart"),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateColor.resolveWith(
                            (states) => Colors.black),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () => {},
                      child: Text("Paypal"),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateColor.resolveWith(
                            (states) => Colors.black),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () => {},
                      child: Text("Wallet"),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateColor.resolveWith(
                            (states) => Colors.black),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width * .7,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () => {NextScreen(context, DeliveryProcess())},
                    style: ButtonStyle(
                      padding: MaterialStateProperty.resolveWith(
                          (states) => EdgeInsets.all(20)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      backgroundColor: MaterialStateColor.resolveWith(
                        (states) => const Color.fromRGBO(0, 160, 130, 1),
                      ),
                    ),
                    child: const Text("Checkout"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
