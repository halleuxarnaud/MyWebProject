import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/color.dart';
import 'package:flutter_application_1/homepage.dart';

void main() async {
  runApp(const MyApp());
}

//* Fix le bug d'animation quand on scroll ca cut l'autre annimation

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
