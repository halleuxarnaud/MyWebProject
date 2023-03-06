import 'package:flutter/material.dart';
import 'package:mywebproject/components/color.dart';
import 'package:mywebproject/components/data.dart';
import 'package:mywebproject/components/style.dart';
import 'package:mywebproject/src/CreatorLayout/widgets/generateurpdf.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class DownloadCV extends StatefulWidget {
  const DownloadCV({super.key});

  @override
  State<DownloadCV> createState() => _DownloadCVState();
}

class _DownloadCVState extends State<DownloadCV> {
  @override
  Widget build(BuildContext context) {
    Size maxSize = MediaQuery.of(context).size;

    return Column(
      children: [
        Container(
          width: maxSize.width,
          color: MyWebProjectUI.kDefaultcolor,
          padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
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
                      MyWebProjectData.titleCVfr,
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
                  Text(
                    MyWebProjectData.descCVfr,
                    style: MyWebProjectStyle.descAboutMeStyleApp,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        child: OutlinedButton(
                          onPressed: () {
                            GeneratePDF().createPDF();
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
                        decoration: MyWebProjectGradient.kInnerDecoration,
                      ),
                    ),
                    height: 50.0,
                    decoration: MyWebProjectGradient.kGradientBoxDecoration,
                  ),
                  SizedBox(
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
