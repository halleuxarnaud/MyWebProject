import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:mywebproject/components/color.dart';
import 'package:mywebproject/components/data.dart';
import 'package:mywebproject/components/style.dart';

import 'package:page_transition/page_transition.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class AboutMe extends StatefulWidget {
  final Size size;
  final double _currentOffset;
  const AboutMe(this.size, this._currentOffset, {super.key});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        Container(
          width: widget.size.width,
          color: MyWebProjectUI.kDefaultcolor,
          padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FittedBox(
                    fit: BoxFit.contain,
                    child: GradientText(
                      MyWebProjectData.titleAboutMe,
                      style: MyWebProjectStyle.titleAboutMeStyle,
                      colors: const [
                        Color(0XFF9465F6),
                        Color(0XFF739cca),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    MyWebProjectData.descAboutMe,
                    style: MyWebProjectStyle.descAboutMeStyleApp,
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          color: MyWebProjectUI.kDefaultcolor,
          height: 150,
        ),
      ],
    );
  }
}
