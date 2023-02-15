import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/components/color.dart';
import 'package:flutter_application_1/src/DesktopLayout/data.dart';
import 'package:flutter_application_1/src/DesktopLayout/mouseTrackAnimation.dart';
import 'package:flutter_application_1/src/widgets/parallaximage.dart';
import 'package:mouse_parallax/mouse_parallax.dart';

class Products extends StatefulWidget {
  final Size size;
  const Products(this.size, {Key? key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  late bool isHovered1 = false;
  late bool isHovered2 = false;
  late bool isHovered3 = false;

  void updateIsHovered(bool Value, int Card) {
    if (Card == 1) {
      isHovered1 = Value;
    } else if (Card == 2) {
      isHovered2 = Value;
    } else if (Card == 3) {
      isHovered3 = Value;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.size.width,
      color: kDefaultcolor,
      child: Padding(
        padding: EdgeInsets.fromLTRB(
            widget.size.width * 0.25, 0, widget.size.width * 0.25, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Projects',
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'SpaceMono',
                color: colorFonts,
                fontWeight: FontWeight.w400,
                fontSize: 60,
              ),
            ),
            const SizedBox(
              height: 110,
            ),
            showCardProject(minTitle1, title1, description1, isHovered1, card1,
                srcimage11, srcimage12, srcimage13, srcimagenull1),
            const SizedBox(
              height: 200,
            ),
            showCardProject(minTitle2, title2, description2, isHovered2, card2,
                srcimage21, srcimage22, srcimage23, srcimagenull2),
            const SizedBox(
              height: 200,
            ),
            showCardProject(minTitle3, title3, description3, isHovered3, card3,
                srcimage31, srcimage32, srcimage33, srcimagenull3),
            const SizedBox(
              height: 250,
            ),
          ],
        ),
      ),
    );
  }

  MouseRegion showCardProject(
      String minTitle,
      String title,
      String description,
      bool isHovered,
      int cardCounter,
      String src1,
      String src2,
      String src3,
      String srcnull) {
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
          color: Color.fromRGBO(65, 35, 138, 0.1),
        ),
        child: AnimatedContainer(
          height: 550,
          width: widget.size.width,
          duration: const Duration(milliseconds: 200),
          decoration: BoxDecoration(
            border: Border.all(width: 2, color: colorFonts),
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            boxShadow: isHovered
                ? [
                    BoxShadow(
                      color: const Color(0xFF41238a).withOpacity(0.5),
                      spreadRadius: 15,
                      blurRadius: 20,
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
                    ? ParallaxEffectWidget(src1, src2, src3, widget.size)
                    : ParallaxEffectWidget(
                        srcnull, srcnull, srcnull, widget.size),
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
                          minTitle,
                          style: TextStyle(
                              color: primaryColor,
                              fontFamily: 'SpaceMono',
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 3),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          color: const Color(0XFF41238a),
                          child: Text(
                            title,
                            style: TextStyle(
                                color: Color(0XFF47e98d),
                                fontFamily: 'SpaceMono',
                                fontSize: 40,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: 500,
                          child: Text(
                            description,
                            style: TextStyle(
                                color: colorFonts,
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
                            backgroundColor: kDefaultcolor,
                            side:
                                const BorderSide(width: 2, color: Colors.white),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8))),
                        child: const Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            'See more',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'SpaceMono',
                                fontSize: 19),
                          ),
                        ),
                        onPressed: () {}),
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
