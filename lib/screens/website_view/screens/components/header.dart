import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../theme.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Row(
      children: [
        Text(
          "Voosool",
          style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.w900,
              color: logoColor),
        ),
        Container(
            padding: const EdgeInsets.only(bottom: 20),
            child: Icon(Icons.location_on_outlined, color: logoColor,)),
        // const Spacer(),
        //menu
        // if (Responsive.isDesktop(context)) const HeaderWebMenu(),

        // _size.width > 400
        //     ? Expanded(
        //         child: MaterialButton(
        //           onPressed: (){},
        //           color: Colors.black,
        //           height: 50,
        //           minWidth: 80,
        //           shape: RoundedRectangleBorder(
        //             borderRadius: BorderRadius.circular(15.0)
        //           ),
        //           child: Row(
        //             children: const [
        //               SizedBox(width: 5.0,),
        //               Icon(CupertinoIcons.person_circle, color: Colors.white,),
        //               SizedBox(width: 9.0,),
        //               Text("Log In", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),)
        //             ],
        //           ),
        //         )
        //       )
        //     : Container(
        //         padding: const EdgeInsets.only(left: 10, right: 10),
        //         height: 50,
        //         decoration: BoxDecoration(
        //           color: Colors.white,
        //           border: Border.all(color: Colors.grey.withOpacity(0.3)),
        //         ),
        //         child: const Icon(Icons.search)),
        // const SizedBox(
        //   width: 615,
        // ),
        const Spacer(),
        MaterialButton(
          onPressed: (){},
          color: Colors.black,
          height: 50,
          minWidth: 110,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0)
          ),
          child: Row(
            children: const [
              Icon(CupertinoIcons.person_circle, color: Colors.white,),
              SizedBox(width: 9.0,),
              Text("Log In", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),)
            ],
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        MaterialButton(
            onPressed: (){},
            color: circleAvatarBackgroundShade,
            height: 50,
            minWidth: 110,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0)
            ),
            child: const Text("Sign Up", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),)
        )
      ],
    );
  }
}
