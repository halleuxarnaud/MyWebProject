import 'package:flutter/material.dart';
import 'package:mywebproject/components/color.dart';

abstract class MyWebProjectStyle {
//Config About Me
  static const titleAboutMeStyle = TextStyle(
    fontFamily: 'SpaceMono',
    fontSize: 60,
    fontWeight: FontWeight.w400,
  );

  static const descAboutMeStyle = TextStyle(
    
      fontFamily: 'SpaceMono',
      color: MyWebProjectUI.secondaryColor,
      fontWeight: FontWeight.w400,
      fontSize: 20);
}

