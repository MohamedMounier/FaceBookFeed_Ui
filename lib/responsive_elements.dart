import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  Responsive({required this.mobile, required this.tablet, required this.desktop});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth >= 1100) {
        return desktop;
      } else if (constraints.maxWidth > 650 && constraints.maxWidth < 1100) {



        return tablet;
      } else {
        return mobile;
      }
    });
  }
}
/*
static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 650;
  static bool isTablet(BuildContext context) {
    return MediaQuery.of(context).size.width >= 650 &&
        MediaQuery.of(context).size.width < 1100;
  }

  static bool isWeb(BuildContext context) {
    return MediaQuery.of(context).size.width >= 1100;
  }
 */
