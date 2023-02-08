import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/color.dart';
import 'package:flutter_application_1/src/DesktopLayout/homepage.dart';

void main() async {
  runApp(const MyApp());
}

//* Faire une annimation pour animationFooter venu du bas

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'MyWebProject',
        home: HomePage());
  }
}
