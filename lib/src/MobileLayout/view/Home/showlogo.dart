import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mywebproject/components/color.dart';

class ShowLogo extends StatefulWidget {
  const ShowLogo();

  @override
  _ShowLogoState createState() => _ShowLogoState();
}

class _ShowLogoState extends State<ShowLogo> {
  @override
  Widget build(BuildContext context) {
    Size maxSize = MediaQuery.of(context).size;
    return Container(
      height: maxSize.height,
      width: maxSize.width,
      color: MyWebProjectUI.kDefaultcolor,
      child: Stack(
        children: [
          Center(
            child: Image.asset(
              'assets/image/logoapp.png',
            ),
          ),
          Positioned.fill(
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: LottieBuilder.asset('assets/image/fleche.json'))),
        ],
      ),
    );
  }
}
