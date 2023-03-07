import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mywebproject/components/color.dart';

class ShowLogo extends StatefulWidget {
  const ShowLogo();

  @override
  _ShowLogoState createState() => _ShowLogoState();
}

class _ShowLogoState extends State<ShowLogo> {
  double opacity = 0;

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 0), () {
      setState(() {
        opacity = 1;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size maxSize = MediaQuery.of(context).size;
    return Container(
      height: maxSize.height,
      width: maxSize.width,
      color: MyWebProjectUI.kDefaultcolor,
      child: Center(
        child: AnimatedOpacity(
          opacity: opacity,
          duration: const Duration(seconds: 3),
          child: Image.asset(
            'assets/image/logoapp.png',
          ),
        ),
      ),
    );
  }
}
