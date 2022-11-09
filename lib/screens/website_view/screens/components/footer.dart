import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../../theme.dart';

class Footer extends StatelessWidget {
  var kSecondaryColor;

  Footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.black,
      child: Container(
        padding:  const EdgeInsets.all(kPadding),
        constraints: const BoxConstraints(maxWidth: kMaxWidth),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                  padding: const EdgeInsets.only(left: 195),
                  child: Icon(
                    Icons.location_on_outlined,
                    color: primary,
                    size: 50,
                  )),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "VOOSOOL",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                    color: primary),
              ),
            ),
            Column(
              children: [
                const SizedBox(
                  height: 39,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      "Links of interest",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "Terms and conditions",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 48),
                      child: Text(
                        "About us",
                        style: TextStyle(
                            color: logoColor, fontWeight: FontWeight.w700),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 54),
                      child: Text(
                        "Privacy policy",
                        style: TextStyle(
                            color: logoColor, fontWeight: FontWeight.w700),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 73),
                      child: Text(
                        "FAQ",
                        style: TextStyle(
                            color: logoColor, fontWeight: FontWeight.w700),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 45.0),
                      child: Text(
                        "Cookies policy",
                        style: TextStyle(
                            color: logoColor, fontWeight: FontWeight.w700),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 37),
                      child: Text(
                        "Contact us",
                        style: TextStyle(
                            color: logoColor, fontWeight: FontWeight.w700),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 110),
                      child: Text(
                        "Blog",
                        style: TextStyle(
                            color: logoColor, fontWeight: FontWeight.w700),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 353),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Security",
                          style: TextStyle(
                              color: logoColor, fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(left: 210),
                  child: Container(
                    height: 50,
                    width: 185,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: ListTile(
                      leading: Icon(MdiIcons.googlePlay, size: 25, color: Colors.deepOrangeAccent.shade200,),
                      title: const Text("Googleplay", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                    ),
                  ),
                ),
                const SizedBox(height: 15.0),
                Padding(
                  padding: const EdgeInsets.only(left: 210),
                  child: Container(
                    height: 50,
                    width: 185,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: ListTile(
                      leading: Image.asset("assets/images/vec.png", height: 25,),
                      title: const Text("Appstore", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                    ),
                  ),
                ),
                const SizedBox(height: 55,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset("assets/images/twitter.png", height: 30,),
                    Image.asset("assets/images/insta.png", height: 30,),
                    Image.asset("assets/images/facebook.png", height: 30,),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            // if (!Responsive.isDesktop(context)) MobFooterMenu(),
          ],
        ),
      ),
    );
  }
}

class SocialIcon extends StatelessWidget {
  const SocialIcon({
    Key? key,
    required this.icon,
  }) : super(key: key);
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 35,
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: Colors.grey.withOpacity(0.5),
          )),
      child: SvgPicture.asset(icon),
    );
  }
}
