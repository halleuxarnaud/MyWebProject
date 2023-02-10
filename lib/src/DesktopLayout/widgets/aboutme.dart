import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/components/color.dart';
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

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    if (widget._currentOffset <= (size.height * 2) * 0.60) {
      showMoreInformation = false;
    } else {
      showMoreInformation = true;
    }
    print(widget._currentOffset);
    print(widget.size);
    print(showMoreInformation);
    return Container(
        height: widget.size.height,
        width: widget.size.width,
        color: kDefaultcolor,
        padding: const EdgeInsets.only(
          left: 400,
          right: 400,
          top: 50,
        ),
        child: showMoreInformation
            ? Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GradientText(
                    'Flutter Déveloper',
                    style: TextStyle(
                      fontFamily: 'SpaceMono',
                      fontSize: 60,
                      fontWeight: FontWeight.w400,
                    ),
                    colors: const [
                      Color(0XFF9465F6),
                      Color(0XFF739cca),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 1500),
                    height: widget._currentOffset >= (size.height * 2.1) * 0.60
                        ? 150
                        : 0,
                    curve: Curves.easeOut,
                    child: Text(
                      "Je suis Arnaud Halleux, un développeur full stack autodidacte de 25 ans spécialisé dans le développement web, mobile et logiciel. Avec mon expertise en technologies telles que Flutter, Firebase, je peux créer des applications web et mobiles performantes et élégantes. En tant que développeur autodidacte, je suis capable de résoudre rapidement les problèmes complexes. Je suis en train de coder mon portfolio avec Flutter pour montrer mes compétences en développement mobile. Je suis fier de mes compétences et prêt à aider les entreprises à atteindre leurs objectifs de développement de logiciels.",
                      style: TextStyle(
                          fontFamily: 'SpaceMono',
                          color: secondColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 20),
                    ),
                  ),
                ],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GradientText(
                    'Flutter Déveloper',
                    style: TextStyle(
                      fontFamily: 'SpaceMono',
                      fontSize: 60,
                      fontWeight: FontWeight.w400,
                    ),
                    colors: const [
                      Color(0XFF9465F6),
                      Color(0XFF739cca),
                    ],
                  ),
                ],
              ));
  }
}
