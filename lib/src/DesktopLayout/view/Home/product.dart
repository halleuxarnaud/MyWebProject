import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mywebproject/components/color.dart';
import 'package:mywebproject/components/data.dart';
import 'package:mywebproject/src/DesktopLayout/view/Project/AppProject/appProject.dart';
import 'package:mywebproject/src/DesktopLayout/view/Project/SoftProject/softProject.dart';
import 'package:mywebproject/src/DesktopLayout/view/Project/WebProject/webProject.dart';
import 'package:mywebproject/src/DesktopLayout/widgets/mouseTrackAnimation.dart';
import 'package:mywebproject/src/DesktopLayout/widgets/parallaximage.dart';
import 'package:page_transition/page_transition.dart';

class Products extends StatefulWidget {
  final Size maxSize;
  const Products(this.maxSize, {Key? key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  late bool isHoveredApp = false;
  late bool isHoveredWeb = false;
  late bool isHoveredSoft = false;
  static const int card1 = 1;
  static const int card2 = 2;
  static const int card3 = 3;

  void updateIsHovered(bool value, int card) {
    if (card == 1) {
      isHoveredApp = value;
    } else if (card == 2) {
      isHoveredWeb = value;
    } else if (card == 3) {
      isHoveredSoft = value;
    }
  }

  @override
  Widget build(BuildContext context) {
    Size maxSize = MediaQuery.of(context).size;
    return Container(
      width: widget.maxSize.width,
      color: MyWebProjectUI.kDefaultcolor,
      child: Padding(
        padding: EdgeInsets.fromLTRB(
            widget.maxSize.width * 0.25, 0, widget.maxSize.width * 0.25, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              MyWebProjectData.titleProject,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'SpaceMono',
                color: MyWebProjectUI.colorFontField,
                fontWeight: FontWeight.w400,
                fontSize: 60,
              ),
            ),
            const SizedBox(
              height: 110,
            ),
            showCardProject(
                MyWebProjectData.minTitleCardApp,
                MyWebProjectData.titleCardApp,
                MyWebProjectData.descrApp,
                isHoveredApp,
                card1,
                MyWebProjectData.phonePicture1,
                MyWebProjectData.phonePicture2,
                MyWebProjectData.phonePicture3,
                MyWebProjectData.noMovementPicturePhone,
                maxSize),
            const SizedBox(
              height: 200,
            ),
            showCardProject(
                MyWebProjectData.minTitleCardWeb,
                MyWebProjectData.titleCardWeb,
                MyWebProjectData.descWeb,
                isHoveredWeb,
                card2,
                MyWebProjectData.windowPicture1,
                MyWebProjectData.windowPicture2,
                MyWebProjectData.windowPicture3,
                MyWebProjectData.noMovementPictureWindow,
                maxSize),
            const SizedBox(
              height: 200,
            ),
            showCardProject(
                MyWebProjectData.minTitleCardSoft,
                MyWebProjectData.titleCardSoft,
                MyWebProjectData.descSoft,
                isHoveredSoft,
                card3,
                MyWebProjectData.softPicture1,
                MyWebProjectData.softPicture2,
                MyWebProjectData.softPicture3,
                MyWebProjectData.noMovementPictureSoft,
                maxSize),
            const SizedBox(
              height: 250,
            ),
          ],
        ),
      ),
    );
  }

  MouseRegion showCardProject(
    String minTitleCard,
    String titleCard,
    String description,
    bool isHovered,
    int cardCounter,
    String picture1,
    String picture2,
    String picture3,
    String noMovement,
    Size maxSize,
  ) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          updateIsHovered(
            true,
            cardCounter,
          );
        });
      },
      onExit: (event) {
        setState(() {
          updateIsHovered(
            false,
            cardCounter,
          );
        });
      },
      child: AnimatedCursorMouseRegion(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color.fromRGBO(227, 161, 101, 0.1),
        ),
        child: AnimatedContainer(
          height: 550,
          width: widget.maxSize.width,
          duration: const Duration(milliseconds: 200),
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: MyWebProjectUI.colorFontField,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            boxShadow: isHovered
                ? [
                    BoxShadow(
                      color: const Color(0XFFd8c2af).withOpacity(0.5),
                      spreadRadius: 15,
                      blurRadius: 60,
                      offset: const Offset(0, 3),
                    ),
                  ]
                : [],
          ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 25, bottom: 25),
                child: isHovered
                    ? ParallaxEffectWidget(
                        widget.maxSize,
                        picture1,
                        picture2,
                        picture3,
                      )
                    : ParallaxEffectWidget(
                        widget.maxSize, noMovement, noMovement, noMovement),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 25, bottom: 25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          minTitleCard,
                          style: const TextStyle(
                              color: MyWebProjectUI.primaryColor,
                              fontFamily: 'SpaceMono',
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 3),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          color: MyWebProjectUI.containerTitleCardColor,
                          child: Text(
                            titleCard,
                            style: const TextStyle(
                                color: MyWebProjectUI.titleColorCard,
                                fontFamily: 'SpaceMono',
                                fontSize: 40,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        SizedBox(
                          width: 400,
                          child: Text(
                            description,
                            style: const TextStyle(
                                color: MyWebProjectUI.colorFontField,
                                fontFamily: 'SpaceMono',
                                fontSize: 20,
                                fontWeight: FontWeight.w400),
                          ),
                        )
                      ],
                    ),
                    OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.red,
                            backgroundColor: MyWebProjectUI.kDefaultcolor,
                            side:
                                const BorderSide(width: 2, color: Colors.white),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8))),
                        child: const Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            MyWebProjectData.buttonText,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'SpaceMono',
                                fontSize: 19),
                          ),
                        ),
                        onPressed: () {
                          if (cardCounter == 1) {
                            Navigator.push(
                              context,
                              PageTransition(
                                  type: PageTransitionType.fade,
                                  child: AppProject()),
                            );
                          }
                          if (cardCounter == 2) {
                            Navigator.push(
                              context,
                              PageTransition(
                                  type: PageTransitionType.fade,
                                  child: WebProject()),
                            );
                          }
                          if (cardCounter == 3) {
                            Navigator.push(
                              context,
                              PageTransition(
                                  type: PageTransitionType.fade,
                                  child: SoftProject()),
                            );
                          }
                        }),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
