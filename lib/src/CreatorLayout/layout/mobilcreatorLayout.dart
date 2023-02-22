import 'package:flutter/material.dart';
import 'package:mywebproject/components/color.dart';

class CreatorPageMobile extends StatelessWidget {
  const CreatorPageMobile({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: screenSize.height,
          width: screenSize.width,
          color: MyWebProjectUI.kDefaultcolor,
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Mobil Responsive Soon',
                style: TextStyle(
                  color: MyWebProjectUI.secondaryColor,
                  fontFamily: 'SpaceMono',
                  fontWeight: FontWeight.w400,
                  fontSize: 30,
                ),
              ),
              Text(
                'Sorry but you can view my portfolio on a classic screen (Computer)',
                style: TextStyle(
                  color: MyWebProjectUI.secondaryColor,
                  fontFamily: 'SpaceMono',
                  fontWeight: FontWeight.w400,
                  fontSize: 10,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
