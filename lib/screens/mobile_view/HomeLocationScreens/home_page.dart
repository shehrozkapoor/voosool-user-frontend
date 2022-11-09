import 'package:flutter/material.dart';

import '../../../theme.dart';
import '../../desktop_web_view/home.dart';

class HomeLocation extends StatefulWidget {
  const HomeLocation({Key? key}) : super(key: key);

  @override
  State<HomeLocation> createState() => _HomeLocationState();
}

class _HomeLocationState extends State<HomeLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 8.0),
              child: Row(
                children: [
                  const Icon(Icons.arrow_back, color: Colors.black,),
                  const Spacer(),
                  Image.asset("assets/Vector.png"),
                  const SizedBox(width: 14,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (ctx) => Homepage()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: CircleAvatar(
                        radius: 15.0,
                        backgroundColor: circleAvatarBackgroundShade,
                        child: const Icon(Icons.person, color: Colors.black,),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 35.0,),
            Stack(
              children: [
                // Container(
                //   margin: const EdgeInsets.only(top: 20),
                //   padding: const EdgeInsets.all(50),
                //   alignment: Alignment.topLeft,
                //   height: MediaQuery.of(context).size.height * .80,
                //   width: MediaQuery.of(context).size.width,
                //   decoration: const BoxDecoration(
                //     color: Colors.black,
                //     borderRadius: BorderRadius.only(
                //       topLeft: Radius.circular(40),
                //       topRight: Radius.circular(40),
                //     ),
                //   ),
                //   child: Image.asset("assets/Rectangle.png", fit: BoxFit.fill,),
                // ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 70.0),
                  child: ClipRRect(
                      borderRadius: const BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
                      child: Image.asset("assets/Rectangle.png", fit: BoxFit.fill,)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
