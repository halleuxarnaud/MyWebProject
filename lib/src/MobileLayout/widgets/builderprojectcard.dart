import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mywebproject/components/color.dart';
import 'package:mywebproject/components/data.dart';
import 'package:url_launcher/url_launcher.dart';

class BuilderProjectCard extends StatefulWidget {
  final String image;
  final String title;
  final String description;
  final bool opensource;
  final String urlOpenSource;
  const BuilderProjectCard(this.image, this.title, this.description,
      this.opensource, this.urlOpenSource,
      {super.key});

  @override
  State<BuilderProjectCard> createState() => _BuilderProjectCardState();
}

class _BuilderProjectCardState extends State<BuilderProjectCard> {
  void launchUrl() async {
    final Uri uri = Uri.parse(widget.urlOpenSource);
    if (await canLaunch(uri.toString())) {
      await launch(uri.toString());
    } else {
      throw 'Impossible de lancer l\'URL $widget.urlOpenSource';
    }
  }

  @override
  Widget build(BuildContext context) {
    Size maxSize = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Stack(
        children: [
          widget.opensource
              ? Positioned(
                  top: 1,
                  right: 1,
                  child: Image.asset('assets/image/Opensource.png'))
              : Container(),
          AnimatedContainer(
            width: maxSize.width,
            duration: const Duration(milliseconds: 200),
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: MyWebProjectUI.colorFontField,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(15)),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 20.0, right: 20, top: 25, bottom: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Container(
                          height: 300,
                          width: 300,
                          child: Image.asset(
                            widget.image,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        color: MyWebProjectUI.containerTitleCardColor,
                        child: Center(
                          child: Text(
                            widget.title,
                            style: const TextStyle(
                                color: MyWebProjectUI.titleColorCard,
                                fontFamily: 'SpaceMono',
                                fontSize: 30,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        widget.description,
                        style: const TextStyle(
                            color: MyWebProjectUI.colorFontField,
                            fontFamily: 'SpaceMono',
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 30,
                      )
                    ],
                  ),
                  widget.opensource
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                    side: const BorderSide(
                                        width: 2, color: Colors.white),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8))),
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text(
                                        MyWebProjectData.openSourceText,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'SpaceMono',
                                            fontSize: 19),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Image.asset(
                                        'assets/icons/githubiconbutton.png',
                                        height: 20,
                                        width: 20,
                                      ),
                                    ],
                                  ),
                                ),
                                onPressed: () {
                                  launchUrl();
                                }),
                            const SizedBox(
                              height: 20,
                            ),
                            OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                    side: const BorderSide(
                                        width: 2, color: Colors.white),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8))),
                                child: Center(
                                  child: Padding(
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
                                ),
                                onPressed: () {}),
                          ],
                        )
                      : Container(
                          width: maxSize.width,
                          child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  foregroundColor: Colors.red,
                                  backgroundColor: MyWebProjectUI.kDefaultcolor,
                                  side: const BorderSide(
                                      width: 2, color: Colors.white),
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
                              onPressed: () {}),
                        ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
