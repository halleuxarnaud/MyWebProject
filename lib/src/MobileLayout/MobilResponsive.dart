import 'package:flutter/material.dart';
import 'package:mywebproject/src/MobileLayout/view/Home/aboutme.dart';
import 'package:mywebproject/src/MobileLayout/view/Home/animatedfooter.dart';
import 'package:mywebproject/src/MobileLayout/view/Home/buildcv.dart';
import 'package:mywebproject/src/MobileLayout/view/Home/contactform.dart';
import 'package:mywebproject/src/MobileLayout/view/Home/product.dart';
import 'package:mywebproject/src/MobileLayout/view/Home/showlogo.dart';
import 'package:mywebproject/src/MobileLayout/view/Home/warningMessage.dart';

import '../DesktopLayout/widgets/spacer.dart';

class MobileResponsive extends StatefulWidget {
  const MobileResponsive({super.key});

  @override
  State<MobileResponsive> createState() => _MobileResponsiveState();
}

class _MobileResponsiveState extends State<MobileResponsive> {
  @override
  SingleChildScrollView build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ShowLogo(),
          Stack(
            children: [SpacermaxSize(), BetaVersionNotComplet()],
          ),
          AboutMe(),
          DownloadCV(),
          //!Bug de scroll a corriger
          Products(),
          //!Bug de scroll a corriger
          //ContactForm(),
          AnimatedFooter(),
        ],
      ),
    );
  }
}
