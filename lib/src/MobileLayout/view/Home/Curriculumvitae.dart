import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:mywebproject/components/color.dart';
import 'package:mywebproject/components/data.dart';
import 'package:mywebproject/components/style.dart';

import 'package:page_transition/page_transition.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class CurriculumSection extends StatefulWidget {
  final double _currentOffset;
  const CurriculumSection(this._currentOffset, {super.key});

  @override
  State<CurriculumSection> createState() => _CurriculumSectionState();
}

class _CurriculumSectionState extends State<CurriculumSection> {
  bool showMoreInformation = false;
  bool showButtonCreator = false;
  bool isButtonSelected = false;

  @override
  Widget build(BuildContext context) {
    Size maxSize = MediaQuery.of(context).size;
    if (widget._currentOffset <= (maxSize.height * 2) * 0.60) {
      showMoreInformation = false;
    } else {
      showMoreInformation = true;
    }
    if (widget._currentOffset <= (maxSize.height * 2) * 0.60) {
      showButtonCreator = false;
    } else {
      showButtonCreator = true;
    }
    return Column(
      children: [
        Container(
            height: maxSize.height - 300,
            width: maxSize.width,
            color: MyWebProjectUI.kDefaultcolor,
            padding: EdgeInsets.fromLTRB(
                maxSize.width * 0.25, 0, maxSize.width * 0.25, 0),
            child: showMoreInformation
                ? Column(
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
                          AnimatedContainer(
                            duration: const Duration(milliseconds: 1500),
                            height: widget._currentOffset >=
                                    (maxSize.height * 2.1) * 0.70
                                ? 250
                                : 0,
                            curve: Curves.easeOut,
                            child: const Text(
                              MyWebProjectData.descAboutMe,
                              style: MyWebProjectStyle.descAboutMeStyle,
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
                        MyWebProjectData.titleAboutMe,
                        style: MyWebProjectStyle.titleAboutMeStyle,
                        colors: const [
                          Color(0XFF9465F6),
                          Color(0XFF739cca),
                        ],
                      ),
                    ],
                  )),
      ],
    );
  }
}
