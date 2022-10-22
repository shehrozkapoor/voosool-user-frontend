import 'package:flutter/material.dart';
import 'package:voosool_flutter/theme.dart';

class MyWallet extends StatelessWidget {
  const MyWallet({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size2 = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: primary,
      appBar: AppBar(
        backgroundColor: primary,
        title: Text('Wallet'),
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Text(
                "Balance",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: Text(
                "\$5.00",
                style: TextStyle(fontSize: 24),
              ),
            ),
            Text(
              "Ordered burger \$5.00 Oct 23",
              style: TextStyle(fontSize: 16),
            ),
            GestureDetector(
              onTap: () => {},
              child: Container(
                // width: size2.width * .8,
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Icon(Icons.abc_outlined),
                    Text("Add Balance To Wallet")
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () => {},
              child: Container(
                // width: size2.width * .8,
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Icon(Icons.abc_outlined),
                    Text("Transaction History")
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
