import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mywebproject/components/color.dart';
import 'package:mywebproject/components/data.dart';
import 'package:mywebproject/src/MobileLayout/view/Project/AppProject/appProject.dart';
import 'package:mywebproject/src/MobileLayout/view/Project/SoftProject/softProject.dart';
import 'package:mywebproject/src/MobileLayout/view/Project/WebProject/webProject.dart';
import 'package:page_transition/page_transition.dart';

class Products extends StatefulWidget {
  final Size screenSize;
  const Products(this.screenSize, {Key? key});

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
      width: widget.screenSize.width,
      color: MyWebProjectUI.kDefaultcolor,
      child: Padding(
        padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
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
                fontSize: 50,
              ),
            ),
            const SizedBox(
              height: 110,
            ),
            showCardProject(
                MyWebProjectData.minTitleCardApp,
                MyWebProjectData.titleCardApp,
                MyWebProjectData.descrApp,
                MyWebProjectData.phonePicture1,
                card1,
                maxSize),
            const SizedBox(
              height: 200,
            ),
            showCardProject(
                MyWebProjectData.minTitleCardWeb,
                MyWebProjectData.titleCardWeb,
                MyWebProjectData.descWeb,
                MyWebProjectData.windowPicture3,
                card2,
                maxSize),
            const SizedBox(
              height: 200,
            ),
            showCardProject(
                MyWebProjectData.minTitleCardSoft,
                MyWebProjectData.titleCardSoft,
                MyWebProjectData.descSoft,
                MyWebProjectData.softPicture3,
                card3,
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
    String picture,
    int cardCounter,
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
      child: Container(
        height: 800,
        width: widget.screenSize.width,
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: MyWebProjectUI.colorFontField,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(15)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
                child: Container(
                    padding: EdgeInsets.only(top: 20),
                    height: 200,
                    width: 200,
                    child: Image.asset(picture))),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    minTitleCard,
                    style: TextStyle(
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
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                width: widget.screenSize.width,
                child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.red,
                        backgroundColor: MyWebProjectUI.kDefaultcolor,
                        side: const BorderSide(width: 2, color: Colors.white),
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
                              child: AppProjectDisplayApp()),
                        );
                      }
                      if (cardCounter == 2) {
                        Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.fade,
                              child: WebProjectDisplayApp()),
                        );
                      }
                      if (cardCounter == 3) {
                        Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.fade,
                              child: SoftProjectDisplayApp()),
                        );
                      }
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
