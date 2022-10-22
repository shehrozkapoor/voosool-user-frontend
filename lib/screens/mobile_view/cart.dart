import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:voosool_flutter/models/order.dart';
import 'package:voosool_flutter/utils/components.dart';

class Cart extends StatefulWidget {
  Cart({super.key});

  List<Order> orders = [
    // Order(),
    // Order(),
    // Order(),
    // Order(),
    // Order(),
    // Order(),
    // Order(),
    // Order(),
    // Order(),
    // Order(),
    // Order(),
  ];

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(20),
            child: const Text(
              "Cart",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .8,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
            ),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(
                    left: 30,
                    right: 30,
                    top: 15,
                    bottom: 15,
                  ),
                  margin: EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: const Text(
                    "Orders",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Container(
                  // color: Colors.red,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * .5,
                  child: widget.orders.length == 0
                      ? Column(
                          children: [
                            Image.asset("assets/empty_cart.png"),
                            Container(
                              padding: EdgeInsets.all(50),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: ElevatedButton(
                                  onPressed: () => {},
                                  style: ButtonStyle(
                                    padding: MaterialStateProperty.resolveWith(
                                        (states) => EdgeInsets.all(20)),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                      ),
                                    ),
                                    backgroundColor:
                                        MaterialStateColor.resolveWith(
                                      (states) =>
                                          const Color.fromRGBO(0, 160, 130, 1),
                                    ),
                                  ),
                                  child: const Text("Start Shopping")),
                            )
                          ],
                        )
                      : GridView.count(
                          crossAxisCount: 3,
                          children: List.generate(
                            widget.orders.length,
                            (index) {
                              return Center(
                                child: Food(context, "Product 1",
                                    "assets/restaurant.png"),
                              );
                            },
                          ),
                        ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width * .7,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () => {},
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
          )
        ],
      ),
    );
  }
}
