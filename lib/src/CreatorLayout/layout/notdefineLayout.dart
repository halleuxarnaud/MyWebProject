import 'package:flutter/material.dart';
import 'package:mywebproject/components/color.dart';

class NotDefinedLayout extends StatelessWidget {
  const NotDefinedLayout({super.key});

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
        const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Soon Repository',
                style: TextStyle(
                  color: MyWebProjectUI.secondaryColor,
                  fontFamily: 'SpaceMono',
                  fontWeight: FontWeight.w400,
                  fontSize: 30,
                ),
              ),
              Text(
                'Sorry but you can view my portfolio on a classic screen (Computer) or in fullscreen',
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