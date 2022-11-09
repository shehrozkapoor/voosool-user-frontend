import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../../../../theme.dart';

class MiddleBodyContainerPart extends StatelessWidget {
  const MiddleBodyContainerPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: [
          Image.asset("assets/images/hands.png", height: 150,),
          const SizedBox(height: 15,),
          Image.asset("assets/images/lets.png", height: 20,),
          const SizedBox(height: 25,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Stack(
                children: [
                  Image.asset("assets/images/backgroundcircle.png", height: 130,),
                  Positioned(
                      left: 9,
                      child: Image.asset("assets/images/rider.png", height: 125,)),
                ],
              ),
              Stack(
                children: [
                  Image.asset("assets/images/backgroundcircle.png", height: 130,),
                  Positioned(
                      left: 9,
                      child: Image.asset("assets/images/rider.png", height: 125,)),
                ],
              ),
              Stack(
                children: [
                  Image.asset("assets/images/backgroundcircle.png", height: 130,),
                  Positioned(
                      left: 9,
                      child: Image.asset("assets/images/rider.png", height: 125,)),
                ],
              )
            ],
          ),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Text("Become a Rider", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900),),
              Padding(
                  padding: EdgeInsets.only(right: 25.0),
                  child: Text("Become a Partner", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900),)),
              Padding(
                  padding: EdgeInsets.only(right:40.0),
                  child: Text("Career", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900),)),
            ],
          ),
          const SizedBox(height: 20.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:  [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: 150,
                    child: Wrap(
                      children: const [
                        Text("Be your own boss! Enjoy Flexibility,"
                            " freedom and competitive earnings by delivering "
                            "with Voosool", style: TextStyle(fontSize: 11.0, color: Colors.black),),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: 150,
                    child: Wrap(
                      children: const [
                        Text("Be your own boss! Enjoy Flexibility,"
                            " freedom and competitive earnings by delivering "
                            "with Voosool", style: TextStyle(fontSize: 11.0, color: Colors.black),),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: 150,
                    child: Wrap(
                      children: const [
                        Text("Be your own boss! Enjoy Flexibility,"
                            " freedom and competitive earnings by delivering "
                            "with Voosool", style: TextStyle(fontSize: 11.0, color: Colors.black),),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20.0),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 37,
                width: 115,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: logoColor,
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: const Text("Join Us", style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                height: 37,
                width: 115,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: logoColor,
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: const Text("Join Us", style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                height: 37,
                width: 115,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: logoColor,
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: const Text("Join Us", style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
