import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mywebproject/components/color.dart';

class ShowLogo extends StatefulWidget {
  final bool positionShowAnimation;
  final Size size;
  final double _opacityAdaptive;
  const ShowLogo(
    this.positionShowAnimation,
    this.size,
    this._opacityAdaptive,
  );

  @override
  _ShowLogoState createState() => _ShowLogoState();
}

class _ShowLogoState extends State<ShowLogo> {
  double opacity = 0;
  //String filePath = 'assets/video/song.mp3';

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
    return widget.positionShowAnimation
        ? Container(
            height: widget.size.height,
            width: widget.size.width,
            color: MyWebProjectUI.kDefaultcolor,
            child: Stack(
              children: [
                Center(
                  child: AnimatedOpacity(
                    opacity: opacity,
                    duration: const Duration(seconds: 3),
                    child: AnimatedOpacity(
                      opacity: opacity,
                      duration: const Duration(seconds: 3),
                      child: Image.asset(
                        'assets/image/logo.png',
                      ),
                    ),
                  ),
                ),
                Positioned.fill(
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child:
                            LottieBuilder.asset('assets/image/fleche.json'))),
              ],
            ),
          )
        : Container(
            height: widget.size.height,
            width: widget.size.width,
            color: MyWebProjectUI.kDefaultcolor,
            child: Stack(
              children: [
                Center(
                  child: Opacity(
                    opacity: widget._opacityAdaptive,
                    child: Image.asset(
                      'assets/image/logo.png',
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}
