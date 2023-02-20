import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:mywebproject/components/color.dart';
import 'package:mywebproject/components/data.dart';
import 'package:mywebproject/components/style.dart';
import 'package:mywebproject/src/DesktopLayout/view/Creator/creatorpage.dart';
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
  bool showButtonCreator = false;
  bool isButtonSelected = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    if (widget._currentOffset <= (size.height * 2) * 0.80) {
      showMoreInformation = false;
    } else {
      showMoreInformation = true;
    }
    if (widget._currentOffset <= (size.height * 2) * 0.85) {
      showButtonCreator = false;
    } else {
      showButtonCreator = true;
    }
    return Container(
        height: widget.size.height - 300,
        width: widget.size.width,
        color: MyWebProjectUI.kDefaultcolor,
        padding: EdgeInsets.fromLTRB(
            widget.size.width * 0.25, 0, widget.size.width * 0.25, 0),
        child: showMoreInformation
            ? Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          GradientText(
                            MyWebProjectData.titleAboutMe,
                            style: MyWebProjectStyle.titleAboutMeStyle,
                            colors: const [
                              Color(0XFF9465F6),
                              Color(0XFF739cca),
                            ],
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          showButtonCreator
                              ? AnimatedContainer(
                                  duration: const Duration(seconds: 2),
                                  width: widget._currentOffset >=
                                          (size.height * 2.1) * 0.85
                                      ? 160
                                      : 0,
                                  curve: Curves.easeOut,
                                  child: AnimatedButton(
                                    animatedOn: AnimatedOn.onHover,
                                    height: 55,
                                    width: 200,
                                    text: 'Creator',
                                    gradient: const LinearGradient(colors: [
                                      MyWebProjectUI.firstColorTitleGradient,
                                      MyWebProjectUI.secondColorTitleGradient
                                    ]),
                                    selectedGradientColor: const LinearGradient(
                                        colors: [Colors.red, Colors.orange]),
                                    isReverse: true,
                                    selectedTextColor: Colors.white,
                                    transitionType:
                                        TransitionType.LEFT_CENTER_ROUNDER,
                                    borderColor: Colors.white,
                                    borderRadius: 15,
                                    borderWidth: 1,
                                    onPress: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const CreatorPage()),
                                      );
                                    },
                                  ),
                                )
                              : const SizedBox()
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 1500),
                        height:
                            widget._currentOffset >= (size.height * 2.1) * 0.80
                                ? 350
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
              ));
  }
}
