import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mywebproject/components/color.dart';
import 'package:mywebproject/src/CreatorLayout/widgets/comp%C3%A9tenceviuw.dart';
import 'package:mywebproject/src/CreatorLayout/widgets/formationviuw.dart';
import 'package:mywebproject/src/CreatorLayout/widgets/softskillviuw.dart';
import 'package:qr_flutter/qr_flutter.dart';

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
              color: Colors.white.withOpacity(0.04),
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
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: 3, color: const Color(0XFF41238a)),
                              ),
                              height: 340,
                              child: const Center(child: Text('Photo')),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  FormationViuw(),
                                  SizedBox(
                                    height: 50,
                                  ),
                                  CompetenceViuw(),
                                  SizedBox(
                                    height: 50,
                                  ),
                                  SoftSkillViuw(),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: screenSize.width -
                            ((screenSize.width * 0.20) * 2 + 330),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
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
                                    height: screenSize.width * 0.05,
                                    width: screenSize.width * 0.05,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 3,
                                            color: const Color(0XFF41238a))),
                                    child: QrImage(
                                      data: 'www.mywebproject.be',
                                      version: QrVersions.auto,
                                      gapless: false,
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 20, bottom: 20),
                                child: Container(
                                  height: 2,
                                  width: screenSize.width -
                                      ((screenSize.width * 0.20) * 2 + 355),
                                  color:
                                      const Color.fromARGB(255, 108, 108, 108),
                                ),
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'En quelques mots...',
                                    style: TextStyle(
                                        fontFamily: 'SweetSans',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    'Je suis un développeur Flutter junior, et je suis convaincu que je suis né avec un clavier entre les mains. J\'aime les défis techniques, et les projets créatifs. Si vous cherchez un développeur qui peut vous aider à créer des applications mobiles aussi cool que les gadgets de James Bond, alors vous êtes au bon endroit.',
                                    style: TextStyle(
                                        fontFamily: 'SweetSans', fontSize: 13),
                                  )
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 30, bottom: 30),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: 3,
                                          width: 40,
                                          color: Colors.black,
                                        ),
                                        Container(
                                          height: 2,
                                          width: screenSize.width -
                                              ((screenSize.width * 0.20) * 2 +
                                                  395),
                                          color: const Color.fromARGB(
                                              255, 108, 108, 108),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 6, bottom: 6, left: 9),
                                      child: Row(
                                        children: [
                                          SvgPicture.asset(
                                              'assets/image/briefcase.svg'),
                                          const SizedBox(
                                            width: 15,
                                          ),
                                          const Text(
                                            'EXPÉRIENCES PROFESSIONELLES',
                                            style: TextStyle(
                                                fontFamily: 'SweetSans',
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13),
                                          )
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 3,
                                          width: 40,
                                          color: Colors.black,
                                        ),
                                        Container(
                                          height: 2,
                                          width: screenSize.width -
                                              ((screenSize.width * 0.20) * 2 +
                                                  395),
                                          color: const Color.fromARGB(
                                              255, 108, 108, 108),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
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
