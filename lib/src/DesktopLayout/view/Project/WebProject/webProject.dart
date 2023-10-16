import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mywebproject/components/color.dart';
import 'package:mywebproject/src/DesktopLayout/widgets/builderprojectcard.dart';

class WebProject extends StatelessWidget {
  const WebProject({super.key});

  @override
  Widget build(BuildContext context) {
    Size maxSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: maxSize.height,
        width: maxSize.width,
        color: MyWebProjectUI.kDefaultcolor,
        child: Stack(
          children: [
            Container(
              height: maxSize.height,
              width: maxSize.width,
              child: SvgPicture.asset(
                'assets/image/reliefBack.svg',
                width: maxSize.width,
                color: Colors.white.withOpacity(0.04),
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(80.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  BuilderProjectCard(
                      'assets/image/mywebprojectlogo.png',
                      'MyWebProject',
                      "MyWebProject is a portfolio fully realized with Flutter and Dart ",
                      true,
                      'https://github.com/halleuxarnaud/MyWebProject'),
                ],
              ),
            ),
            Positioned(
              height: 60,
              width: 60,
              top: 20,
              left: 20,
              child: RotatedBox(
                quarterTurns: 90,
                child: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  icon: SvgPicture.asset(
                    'assets/image/exit.svg',
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
