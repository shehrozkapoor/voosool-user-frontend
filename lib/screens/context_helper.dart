import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:voosool_flutter/screens/desktop_web_view/home.dart'
    as DesktopView;
import 'package:voosool_flutter/screens/mobile_view/home.dart' as MobileView;

class ContextHelper extends StatefulWidget {
  const ContextHelper({super.key});

  @override
  State<ContextHelper> createState() => _ContextHelperState();
}

class _ContextHelperState extends State<ContextHelper> {
  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width < 500) {
      return MobileView.Homepage();
    } else {
      return DesktopView.Homepage();
    }
  }
}
