import 'package:flutter/material.dart';
import 'package:mywebproject/components/color.dart';

class WebProjectDisplayApp extends StatelessWidget {
  const WebProjectDisplayApp({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: screenSize.height,
        width: screenSize.width,
        color: MyWebProjectUI.kDefaultcolor,
        child: const Center(
          child: Text(
            'WebProject',
            style: TextStyle(
              color: MyWebProjectUI.secondaryColor,
              fontFamily: 'SpaceMono',
              fontWeight: FontWeight.w400,
              fontSize: 80,
            ),
          ),
        ),
      ),
    );
  }
}
