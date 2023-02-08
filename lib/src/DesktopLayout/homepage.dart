import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/DesktopLayout/DesktopResponsive.dart';
import 'package:flutter_application_1/src/DesktopLayout/MobilResponsive.dart';
import 'package:flutter_application_1/src/DesktopLayout/TabletteResponsive.dart';

import 'reponsivelayout.dart';
import 'MinimumWebResp.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ResponsiveLayout(
      mobileResp: const MobilResponsive(),
      minWebResp: const MinimumWebResp(),
      tabletteResp: const TabletteResponsive(),
      desktopResp: const DesktopResponsive(),
    ));
  }
}
