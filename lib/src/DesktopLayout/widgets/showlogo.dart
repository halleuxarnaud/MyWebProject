import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/color.dart';

class ShowLogo extends StatefulWidget {
  final bool position0;
  final Size size;
  final double _opacityAdaptive;
  final double _scrollControllerOffset;
  ShowLogo(this.position0, this.size, this._opacityAdaptive,
      this._scrollControllerOffset);

  @override
  _ShowLogoState createState() => _ShowLogoState();
}

class _ShowLogoState extends State<ShowLogo> {
  double opacity = 0;

  @override
  void initState() {
    Future.delayed(Duration(seconds: 0), () {
      setState(() {
        opacity = 1;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return widget.position0
        ? Container(
            height: widget.size.height,
            width: widget.size.width,
            color: kDefaultcolor,
            child: Stack(
              children: [
                Center(
                  child: AnimatedOpacity(
                      opacity: opacity,
                      duration: Duration(seconds: 3),
                      child: Image.asset(
                        'assets/image/HiverLogo.png',
                        color: Colors.white,
                        height: 300,
                        width: 300,
                      )),
                ),
              ],
            ),
          )
        : Container(
            height: widget.size.height,
            width: widget.size.width,
            color: kDefaultcolor,
            child: Stack(
              children: [
                Center(
                  child: Opacity(
                    opacity: widget._opacityAdaptive,
                    child: Image.asset(
                      'assets/image/HiverLogo.png',
                      color: Colors.white,
                      height: 300,
                      width: 300,
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}
