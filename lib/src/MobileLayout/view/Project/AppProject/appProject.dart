import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:mywebproject/components/color.dart';

class AppProjectDisplayApp extends StatelessWidget {
  const AppProjectDisplayApp({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: screenSize.height,
        width: screenSize.width,
        color: MyWebProjectUI.kDefaultcolor,
        child: Center(
          child: Text(
            'App Project',
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
