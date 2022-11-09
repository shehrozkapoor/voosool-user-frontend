import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import '../../../../theme.dart';

class BannerSection extends StatelessWidget {
  const BannerSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          flex: 3,
          child: AboutSection(),
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              Image.asset("assets/images/desktop.png"),
            ],
          ),
        )
      ],
    );
  }
}

class MobBanner extends StatefulWidget {
  const MobBanner({Key? key}) : super(key: key);

  @override
  _MobBannerState createState() => _MobBannerState();
}

class _MobBannerState extends State<MobBanner> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Image.asset(
              "assets/images/desktop.png",
              height: 250,
              width: 250,
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        const AboutSection(),
      ],
    );
  }
}

class AboutSection extends StatelessWidget {
  const AboutSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        // ignore: prefer_const_constructors
        //it will adjust its size according to screeen
        // const AutoSizeText(
        //   "Eat today",
        //   maxLines: 1,
        //   style: TextStyle(fontSize: 56, fontWeight: FontWeight.bold),
        // ),
        const SizedBox(
          height: 10,
        ),
        Align(
          alignment: Alignment.topLeft,
          child: RichText(
            text: const TextSpan(
                children: [
                  TextSpan(
                      text: "Get Anything To Your",
                      style: TextStyle(fontSize: 24)
                  ),
                  WidgetSpan(
                      alignment: PlaceholderAlignment.baseline,
                      baseline: TextBaseline.alphabetic,
                      child: SizedBox(width: 7.0)),
                  TextSpan(
                      text: "Door Step...",
                      style: TextStyle(fontWeight: FontWeight.w900, fontSize: 24)
                  )
                ]
            ),
          ),
        ),
        // const SizedBox(
        //   height: 10,
        // ),
        // const Text(
        //   "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
        //   textAlign: TextAlign.center,
        //   style: TextStyle(
        //     color: Colors.black54,
        //   ),
        // ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50,
              width: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
                color: logoColor,
              ),
              child: Icon(Icons.location_on_outlined, color: accentShade, size: 35,),
            ),
            Container(
                height: 50,
                width: 380,
                alignment: Alignment.center,
                padding: const EdgeInsets.only(left: 25),
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Enter Location, City, Road...",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: InputBorder.none,
                  ),
                )
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 31),
              child: Text("Use Current Location", style: TextStyle(color: logoColor, fontWeight: FontWeight.w700),),
            ),
            const SizedBox(width: 5.0,),
            Icon(Icons.send_rounded, color: logoColor, size: 20,)
          ],
        )
      ],
    );
  }
}
