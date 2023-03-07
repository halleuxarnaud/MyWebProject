import 'package:flutter/material.dart';
import 'package:mywebproject/components/color.dart';
import 'package:mywebproject/components/data.dart';
import 'package:mywebproject/components/style.dart';
import 'package:mywebproject/src/CreatorLayout/widgets/generateurpdfFR.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({super.key});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
    Size maxSize = MediaQuery.of(context).size;

    return Column(
      children: [
        Container(
          width: maxSize.width,
          color: MyWebProjectUI.kDefaultcolor,
          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
          child: Column(
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
                        Color(0XFFe3a165),
                        Color(0XFF739cca),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    MyWebProjectData.descAboutMe,
                    style: MyWebProjectStyle.descAboutMeStyleApp,
                  ),
                  const SizedBox(
                    height: 150,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
