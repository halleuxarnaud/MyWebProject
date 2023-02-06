import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileResp;
  final Widget minWebResp;
  final Widget tabletteResp;
  final Widget desktopResp;

  ResponsiveLayout(
      {required this.mobileResp,
      required this.minWebResp,
      required this.tabletteResp,
      required this.desktopResp});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 480) {
          return mobileResp;
        } else if (constraints.maxWidth < 780) {
          return minWebResp;
        } else if (constraints.maxWidth < 1000) {
          return tabletteResp;
        } else {
          return desktopResp;
        }
      },
    );
  }
}
