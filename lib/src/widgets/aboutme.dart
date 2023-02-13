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
    if (widget._currentOffset <= (size.height * 2) * 0.60) {
      showMoreInformation = false;
    } else {
      showMoreInformation = true;
    }
    print(widget._currentOffset);
    print(widget.size);
    print(showMoreInformation);
    return Container(
        height: widget.size.height - 300,
        width: widget.size.width,
        color: kDefaultcolor,
        padding: EdgeInsets.fromLTRB(
            widget.size.width * 0.2, 0, widget.size.width * 0.2, 0),
        child: showMoreInformation
            ? Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
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
                      SizedBox(
                        height: 30,
                      ),
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 1500),
                        height:
                            widget._currentOffset >= (size.height * 2.1) * 0.60
                                ? 150
                                : 0,
                        curve: Curves.easeOut,
                        child: Text(
                          "I am Arnaud Halleux, a 25 years old self-taught full stack developer specialized in web, mobile and software development. With my expertise in technologies such as Flutter, Firebase, I can create powerful and elegant web and mobile applications. As a self-taught developer, I am able to solve complex problems quickly. My portfolio is entirely developed with Flutter",
                          style: TextStyle(
                              fontFamily: 'SpaceMono',
                              color: colorFonts,
                              fontWeight: FontWeight.w400,
                              fontSize: 20),
                        ),
                      ),
                    ],
                  ),
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
