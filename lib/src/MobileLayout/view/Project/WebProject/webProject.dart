import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mywebproject/components/color.dart';
import 'package:mywebproject/src/MobileLayout/widgets/builderprojectcard.dart';

class WebProjectDisplayApp extends StatelessWidget {
  const WebProjectDisplayApp({super.key});

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
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: BuilderProjectCard(
                  'assets/image/mywebprojectlogo.png',
                  'MyWebProject',
                  "MyWebProject is a portfolio fully realized with Flutter and Dart ",
                  true,
                  'https://github.com/halleuxarnaud/MyWebProject'),
            ),
            // Positioned(
            //   height: 40,
            //   width: 40,
            //   top: 20,
            //   left: 20,
            //   child: RotatedBox(
            //     quarterTurns: 90,
            //     child: IconButton(
            //       onPressed: () {
            //         Navigator.pushNamed(context, '/home');
            //       },
            //       icon: SvgPicture.asset(
            //         'assets/image/exit.svg',
            //         color: Colors.white,
            //       ),
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
