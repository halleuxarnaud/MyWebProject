import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/DesktopResponsive.dart';
import 'package:flutter_application_1/screens/MobilResponsive.dart';
import 'package:flutter_application_1/screens/TabletteResponsive.dart';

import '../widgets/reponsivelayout.dart';
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
