import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class LowerBodyContainerPart extends StatefulWidget {
  const LowerBodyContainerPart({Key? key}) : super(key: key);

  @override
  State<LowerBodyContainerPart> createState() => _LowerBodyContainerPartState();
}

class _LowerBodyContainerPartState extends State<LowerBodyContainerPart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const Text(
            "Download Our APP",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w900, fontSize: 17),
          ),
          const SizedBox(height: 12.0,),
          Image.asset("assets/images/long.png"),
          const SizedBox(height: 15.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 45,
                  width: 185,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(MdiIcons.googlePlay, size: 25, color: Colors.deepOrangeAccent.shade200,),
                      const SizedBox(width: 15.0,),
                      const Text("Googleplay", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                    ],
                  )
              ),
              const SizedBox(width: 35.0,),
              Container(
                  height: 45,
                  width: 185,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/vec.png", height: 23,),
                      const SizedBox(width: 15.0,),
                      const Text("Appstore", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                    ],
                  )
              ),
            ],
          )
        ],
      ),
    );
  }
}
