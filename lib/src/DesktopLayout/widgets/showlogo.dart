import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/color.dart';

class ShowLogo extends StatefulWidget {
  final Size size;
  ShowLogo(this.size);

  @override
  _ShowLogoState createState() => _ShowLogoState();
}

class _ShowLogoState extends State<ShowLogo> {
  double opacity = 0;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 0), () {
      setState(() {
        opacity = 1;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.size.height,
      width: widget.size.width,
      color: kDefaultcolor,
      child: Stack(
        children: [
          Center(
            child: AnimatedOpacity(
                opacity: opacity,
                duration: Duration(seconds: 7),
                child: Image.asset(
                  'assets/image/logo.png',
                )),
          ),
        ],
      ),
    );
  }
}
