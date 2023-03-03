import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:mywebproject/components/color.dart';
import 'package:mywebproject/components/data.dart';
import 'package:mywebproject/components/style.dart';

import 'package:page_transition/page_transition.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class CurriculumSection extends StatefulWidget {
  final double _currentOffset;
  final double _maxScrollOffset;
  const CurriculumSection(this._currentOffset, this._maxScrollOffset,
      {super.key});

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
    if (widget._currentOffset <= (maxSize.height * 2)) {
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
            height: maxSize.height - 200,
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
                              MyWebProjectData.titleCVen,
                              style: MyWebProjectStyle.titleAboutMeStyle,
                              colors: const [
                                Color(0XFFe3a165),
                                Color(0XFF739cca),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Text(
                            MyWebProjectData.descCVen,
                            style: MyWebProjectStyle.descAboutMeStyle,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Container(
                                child: OutlinedButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/creator');
                                  },
                                  child: Text(
                                    MyWebProjectData.buttonText,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'SpaceMono',
                                        fontSize: 19),
                                  ),
                                ),
                                decoration:
                                    MyWebProjectGradient.kInnerDecoration,
                              ),
                            ),
                            height: 50.0,
                            decoration:
                                MyWebProjectGradient.kGradientBoxDecoration,
                          ),
                        ],
                      )
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
                          Color(0XFFe3a165),
                          Color(0XFF739cca),
                        ],
                      ),
                    ],
                  )),
        Container(
          color: MyWebProjectUI.kDefaultcolor,
          height: 150,
        ),
      ],
    );
  }
}
