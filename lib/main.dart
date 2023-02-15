import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/color.dart';
import 'package:flutter_application_1/homepage.dart';

void main() async {
  runApp(const MyApp());
}

//* Fix le bug d'animation quand on scroll ca cut l'autre annimation
//* Ajouter les nouvelle donner budget + TimeLine a la génération de mail
//* Ajouter une animation sur Sur le voilent quand on Hovered le container le violet est trop rapide
//* Add Snow effect on clck bonhom de neige https://github.com/windwp/flutter-snow-effect
//* Ajouter la barre au chevron en bottom quand la scroolcontroller est au max
//* Corriger l'erreur de defilement de overflow


class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyWebProject',
      home: HomePage(),
    );
  }
}
