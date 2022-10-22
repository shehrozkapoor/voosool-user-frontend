import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class UserAccount extends StatefulWidget {
  const UserAccount({super.key});

  @override
  State<UserAccount> createState() => _UserAccountState();
}

class _UserAccountState extends State<UserAccount> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // alignment: Alignment.center,r
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: Text(
              "Hello, Dave",
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: MediaQuery.of(context).size.width * .4,
              alignment: Alignment.center,
              child: Text(
                "Account",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Button(
            "My Information",
            Icon(
              Icons.info_outline_rounded,
              size: 35,
            ),
            () => {},
          ),
          Button(
              "My Orders",
              Icon(
                Icons.shopping_cart_checkout_rounded,
                size: 35,
              ),
              () => {}),
          Button(
            "Wallet",
            Icon(
              Icons.wallet,
              size: 35,
            ),
            () => {},
          ),
          Button(
            "Affiliate Partner",
            Icon(
              Icons.card_giftcard,
              size: 35,
            ),
            () => {},
          ),
          Button(
            "About Us",
            Icon(
              Icons.shield_moon_outlined,
              size: 35,
            ),
            () => {},
          ),
          Button(
            "Logout",
            Icon(
              Icons.logout,
              size: 35,
            ),
            () => {},
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              margin: EdgeInsets.only(top: 20, right: 10),
              width: 80,
              child: Row(
                children: [
                  Icon(
                    Icons.message_outlined,
                    size: 35,
                  ),
                  Text(
                    "Help",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget Button(String name, Widget icon, Function action) {
    return GestureDetector(
      onTap: () => {action()},
      child: Container(
        margin: EdgeInsets.all(20),
        child: Row(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              child: icon,
              alignment: Alignment.centerLeft,
              width: MediaQuery.of(context).size.width * .2,
            ),
            Container(
              width: MediaQuery.of(context).size.width * .6,
              alignment: Alignment.centerLeft,
              child: Text(
                name,
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
