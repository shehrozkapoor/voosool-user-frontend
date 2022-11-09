import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../../theme.dart';


class FirstBodyContainerPart extends StatelessWidget {
  const FirstBodyContainerPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: MediaQuery.of(context).size.width,
      // color: Colors.amber,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 40),
            child: Align(
              alignment: Alignment.topLeft,
              child: Row(
                children: [
                  RichText(
                    text: const TextSpan(children: [
                      TextSpan(
                        text: "Top",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      WidgetSpan(
                          alignment: PlaceholderAlignment.baseline,
                          baseline: TextBaseline.alphabetic,
                          child: SizedBox(width: 7.0)),
                      TextSpan(
                        text: "Restaurant",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      )
                    ]),
                  ),
                  const SizedBox(
                    width: 6.0,
                  ),
                  Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Icon(
                        MdiIcons.crown,
                        color: primary,
                        size: 40,
                      ))
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                      height: 150,
                      width: 170,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12.0),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0.7, 0.7),
                                blurRadius: 10.0)
                          ]),
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 110,
                                width: 170,
                                // color: Colors.black,
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(12.0),
                                      topRight: Radius.circular(12.0)),
                                  child: Image.asset(
                                    "assets/images/mecdonald.png",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 73.0, left: 45),
                                child: Text(
                                  "McDonald's",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 7.0,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                "assets/images/cycle.png",
                                height: 20,
                              ),
                              Text(
                                "SAED",
                                style: TextStyle(
                                    fontSize: 10.0,
                                    color: logoColor,
                                    fontWeight: FontWeight.w100),
                              ),
                              const Text(
                                "20-30",
                                style: TextStyle(
                                    fontSize: 10.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w800),
                              ),
                              Image.asset(
                                "assets/images/thumbs.png",
                                height: 20,
                              ),
                              const Text(
                                "95%",
                                style: TextStyle(
                                    fontSize: 10.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w200),
                              ),
                            ],
                          )
                        ],
                      )),
                  const SizedBox(width: 25.0,),
                  Container(
                      height: 150,
                      width: 170,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12.0),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0.7, 0.7),
                                blurRadius: 10.0)
                          ]),
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 110,
                                width: 170,
                                // color: Colors.black,
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(12.0),
                                      topRight: Radius.circular(12.0)),
                                  child: Image.asset(
                                    "assets/images/kfc.png",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 73.0, left: 70),
                                child: Text(
                                  "KFC",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 7.0,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                "assets/images/cycle.png",
                                height: 20,
                              ),
                              Text(
                                "SAED",
                                style: TextStyle(
                                    fontSize: 10.0,
                                    color: logoColor,
                                    fontWeight: FontWeight.w100),
                              ),
                              const Text(
                                "20-30",
                                style: TextStyle(
                                    fontSize: 10.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w800),
                              ),
                              Image.asset(
                                "assets/images/thumbs.png",
                                height: 20,
                              ),
                              const Text(
                                "95%",
                                style: TextStyle(
                                    fontSize: 10.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w200),
                              ),
                            ],
                          )
                        ],
                      )),
                  const SizedBox(width: 25.0,),
                  Container(
                      height: 150,
                      width: 170,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12.0),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0.7, 0.7),
                                blurRadius: 10.0)
                          ]),
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 110,
                                width: 170,
                                // color: Colors.black,
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(12.0),
                                      topRight: Radius.circular(12.0)),
                                  child: Image.asset(
                                    "assets/images/pizzahut.png",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 73.0, left: 55),
                                child: Text(
                                  "Pizza Hut",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 7.0,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                "assets/images/cycle.png",
                                height: 20,
                              ),
                              Text(
                                "SAED",
                                style: TextStyle(
                                    fontSize: 10.0,
                                    color: logoColor,
                                    fontWeight: FontWeight.w100),
                              ),
                              const Text(
                                "20-30",
                                style: TextStyle(
                                    fontSize: 10.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w800),
                              ),
                              Image.asset(
                                "assets/images/thumbs.png",
                                height: 20,
                              ),
                              const Text(
                                "95%",
                                style: TextStyle(
                                    fontSize: 10.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w200),
                              ),
                            ],
                          )
                        ],
                      )),
                  const SizedBox(width: 25.0,),
                  Container(
                      height: 150,
                      width: 170,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12.0),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0.7, 0.7),
                                blurRadius: 10.0)
                          ]),
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 110,
                                width: 170,
                                // color: Colors.black,
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(12.0),
                                      topRight: Radius.circular(12.0)),
                                  child: Image.asset(
                                    "assets/images/zeit.png",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 73.0, left: 65),
                                child: Text(
                                  "Zaatar",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 7.0,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                "assets/images/cycle.png",
                                height: 20,
                              ),
                              Text(
                                "SAED",
                                style: TextStyle(
                                    fontSize: 10.0,
                                    color: logoColor,
                                    fontWeight: FontWeight.w100),
                              ),
                              const Text(
                                "20-30",
                                style: TextStyle(
                                    fontSize: 10.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w800),
                              ),
                              Image.asset(
                                "assets/images/thumbs.png",
                                height: 20,
                              ),
                              const Text(
                                "95%",
                                style: TextStyle(
                                    fontSize: 10.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w200),
                              ),
                            ],
                          )
                        ],
                      )),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20.0,),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 150,
                      width: 170,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12.0),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0.7, 0.7),
                                blurRadius: 10.0)
                          ]),
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 110,
                                width: 170,
                                // color: Colors.black,
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(12.0),
                                      topRight: Radius.circular(12.0)),
                                  child: Image.asset(
                                    "assets/images/pars.png",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 73.0, left: 40),
                                child: Text(
                                  "Pars Express",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 7.0,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                "assets/images/cycle.png",
                                height: 20,
                              ),
                              Text(
                                "SAED",
                                style: TextStyle(
                                    fontSize: 10.0,
                                    color: logoColor,
                                    fontWeight: FontWeight.w100),
                              ),
                              const Text(
                                "20-30",
                                style: TextStyle(
                                    fontSize: 10.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w800),
                              ),
                              Image.asset(
                                "assets/images/thumbs.png",
                                height: 20,
                              ),
                              const Text(
                                "95%",
                                style: TextStyle(
                                    fontSize: 10.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w200),
                              ),
                            ],
                          )
                        ],
                      )),
                  const SizedBox(width: 25.0,),
                  Container(
                      height: 150,
                      width: 170,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12.0),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0.7, 0.7),
                                blurRadius: 10.0)
                          ]),
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 110,
                                width: 170,
                                // color: Colors.black,
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(12.0),
                                      topRight: Radius.circular(12.0)),
                                  child: Image.asset(
                                    "assets/images/albaik.png",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 73.0, left: 65),
                                child: Text(
                                  "Al Baik",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 7.0,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                "assets/images/cycle.png",
                                height: 20,
                              ),
                              Text(
                                "SAED",
                                style: TextStyle(
                                    fontSize: 10.0,
                                    color: logoColor,
                                    fontWeight: FontWeight.w100),
                              ),
                              const Text(
                                "20-30",
                                style: TextStyle(
                                    fontSize: 10.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w800),
                              ),
                              Image.asset(
                                "assets/images/thumbs.png",
                                height: 20,
                              ),
                              const Text(
                                "95%",
                                style: TextStyle(
                                    fontSize: 10.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w200),
                              ),
                            ],
                          )
                        ],
                      )),
                  const SizedBox(width: 25.0,),
                  Container(
                      height: 150,
                      width: 170,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12.0),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0.7, 0.7),
                                blurRadius: 10.0)
                          ]),
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 110,
                                width: 170,
                                // color: Colors.black,
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(12.0),
                                      topRight: Radius.circular(12.0)),
                                  child: Image.asset(
                                    "assets/images/mechdonal.png",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 73.0, left: 47),
                                child: Text(
                                  "Mcdonald's",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 7.0,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                "assets/images/cycle.png",
                                height: 20,
                              ),
                              Text(
                                "SAED",
                                style: TextStyle(
                                    fontSize: 10.0,
                                    color: logoColor,
                                    fontWeight: FontWeight.w100),
                              ),
                              const Text(
                                "20-30",
                                style: TextStyle(
                                    fontSize: 10.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w800),
                              ),
                              Image.asset(
                                "assets/images/thumbs.png",
                                height: 20,
                              ),
                              const Text(
                                "95%",
                                style: TextStyle(
                                    fontSize: 10.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w200),
                              ),
                            ],
                          )
                        ],
                      )),
                  const SizedBox(width: 25.0,),
                  Container(
                      height: 150,
                      width: 170,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12.0),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0.7, 0.7),
                                blurRadius: 10.0)
                          ]),
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 110,
                                width: 170,
                                // color: Colors.black,
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(12.0),
                                      topRight: Radius.circular(12.0)),
                                  child: Image.asset(
                                    "assets/images/mechdonal1.png",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 73.0, left: 45),
                                child: Text(
                                  "Mcdonald's",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 7.0,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                "assets/images/cycle.png",
                                height: 20,
                              ),
                              Text(
                                "SAED",
                                style: TextStyle(
                                    fontSize: 10.0,
                                    color: logoColor,
                                    fontWeight: FontWeight.w100),
                              ),
                              const Text(
                                "20-30",
                                style: TextStyle(
                                    fontSize: 10.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w800),
                              ),
                              Image.asset(
                                "assets/images/thumbs.png",
                                height: 20,
                              ),
                              const Text(
                                "95%",
                                style: TextStyle(
                                    fontSize: 10.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w200),
                              ),
                            ],
                          )
                        ],
                      )),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
