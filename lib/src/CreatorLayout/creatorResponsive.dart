import 'package:flutter/material.dart';
import 'package:mywebproject/src/CreatorLayout/layout/desktopLayout.dart';
import 'package:mywebproject/src/CreatorLayout/layout/mobilcreatorLayout.dart';
import 'package:mywebproject/src/CreatorLayout/layout/notdefineLayout.dart';

class CreatorLayout extends StatelessWidget {
  const CreatorLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ResponsiveCreatorLayout(
            mobileResp: const CreatorPageMobile(),
            minWebResp: const NotDefinedLayout(),
            tabletteResp: const NotDefinedLayout(),
            desktopResp: const CreatorPageDesktop()));
  }
}

class ResponsiveCreatorLayout extends StatelessWidget {
  final Widget mobileResp;
  final Widget minWebResp;
  final Widget tabletteResp;
  final Widget desktopResp;

  ResponsiveCreatorLayout(
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
        } else if (constraints.maxWidth < 950) {
          return tabletteResp;
        } else {
          return desktopResp;
        }
      },
    );
  }
}
