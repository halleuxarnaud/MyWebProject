import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/components/color.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class AboutMe extends StatefulWidget {
  final Size size;
  final double _currentOffset;
  const AboutMe(this.size, this._currentOffset, {super.key});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  bool showMoreInformation = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return animationDisplay(size);
  }

  animationDisplay(Size size) {
    print('TestState');
    print(widget._currentOffset);
    print(size.height);
    if (widget._currentOffset >= size.height * 0.40) {
      showMoreInformation = true;
    }
    if (widget._currentOffset <= size.height * 0.40) {
      showMoreInformation = false;
    }
    return Container(
        height: widget.size.height,
        width: widget.size.width,
        color: kDefaultcolor,
        padding: const EdgeInsets.only(
          left: 400,
          right: 220,
          top: 50,
        ),
        child: showMoreInformation
            ? Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GradientText(
                    'Flutter Déveloper',
                    style: TextStyle(
                      fontFamily: 'SpaceMono',
                      fontSize: 60,
                      fontWeight: FontWeight.w400,
                    ),
                    colors: const [
                      Color(0XFF9465F6),
                      Color(0XFF739cca),
                    ],
                  ),
                  Text(
                      "Identifiable branding + an engaging user experience is key to increasing con"),
                ],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GradientText(
                    'Flutter Déveloper',
                    style: TextStyle(
                      fontFamily: 'SpaceMono',
                      fontSize: 60,
                      fontWeight: FontWeight.w400,
                    ),
                    colors: const [
                      Color(0XFF9465F6),
                      Color(0XFF739cca),
                    ],
                  ),
                ],
              ));
  }
}
