import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mywebproject/components/color.dart';

class CreatorPageDesktop extends StatelessWidget {
  const CreatorPageDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: screenSize.height,
        width: screenSize.width,
        color: MyWebProjectUI.kDefaultcolor,
        child: Stack(
          children: [
            SvgPicture.asset(
              'assets/image/reliefBack.svg',
              width: screenSize.width,
              color: Colors.white.withOpacity(0.02),
              fit: BoxFit.fill,
            ),
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.fromLTRB(
                    screenSize.width * 0.20,
                    screenSize.height * 0.05,
                    screenSize.width * 0.20,
                    screenSize.height * 0.05),
                child: Container(
                  color: Colors.white.withOpacity(0.8),
                  padding: const EdgeInsets.all(40),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: screenSize.height * 2,
                        width: 250,
                        color: Colors.grey.withOpacity(0.7),
                        child: Column(
                          children: [
                            Container(
                              height: 350,
                              color: Colors.grey,
                              child: Center(child: Text('Photo')),
                            )
                          ],
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: SizedBox(
                              width: screenSize.width -
                                  ((screenSize.width * 0.20) * 2 + 355),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 25),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'ARNAUD  HALLEUX',
                                          style: TextStyle(
                                              fontFamily: 'SweetSans',
                                              fontSize:
                                                  screenSize.width * 0.022,
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 4),
                                        ),
                                        Text(
                                          'Développeur FullStack Flutter',
                                          style: TextStyle(
                                            color:
                                                Colors.black.withOpacity(0.8),
                                            fontFamily: 'SweetSans',
                                            fontSize: 20,
                                          ),
                                        ),
                                        Text(
                                          '(Mobile/Web/Soft)',
                                          style: TextStyle(
                                            color:
                                                Colors.black.withOpacity(0.8),
                                            fontFamily: 'SweetSans',
                                            fontSize: 20,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 60,
                                    width: 60,
                                    color: Colors.red.withOpacity(0.3),
                                    child: Center(child: const Text('QRCODE')),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(left: 25, top: 30, bottom: 30),
                            child: Container(
                              height: 2,
                              width: screenSize.width -
                                  ((screenSize.width * 0.20) * 2 + 355),
                              color: Colors.black,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Text(
                              'En quelques mots...',
                              style: TextStyle(fontFamily: 'Helvetica'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
