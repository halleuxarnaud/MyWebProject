import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:mywebproject/src/CreatorLayout/creatorResponsive.dart';
import 'package:mywebproject/src/DesktopLayout/view/Home/DesktopResponsive.dart';
import 'package:mywebproject/src/DesktopLayout/widgets/mouseTrackAnimation.dart';
import 'package:mywebproject/src/MinWindowsLayout/MinimumWebResp.dart';
import 'package:mywebproject/src/MobileLayout/MobilResponsive.dart';
import 'package:mywebproject/src/TabletteLayout/TabletteResponsive.dart';

//todo Hiver saison
//! Add Snow effect on clck bonhom de neige https://github.com/windwp/flutter-snow-effect
//! Ajouter de la neige https://www.youtube.com/shorts/V8mYIy4EwRY
//! Et une music quand on clique sur le bonhome de neige "https://www.shazam.com/fr/track/518042609/twinkling-lights?referrer=browserextension"

//todo Now changement
//! Ajouter la barre au chevron en bottom quand la scroolcontroller est au max
//! Zjouter un Neumorphism au button creator https://www.youtube.com/watch?v=6kwcLgdiDLM&t=148s
//! Changer les images pour soft
//* changer le logo de position ou corriger l'erreur de modification de size 'Flutter developpeur'
//* Ajouter les nouvelle donner budget + TimeLine a la génération de mail
//* Corriger l'animation parallax generale
//* Ajouter le bouton pour enregister en pdf le CV
//*Ajouter le bouton retour sur la page creator

void main() async {
  //Function pour supprimer le # dans l'url grade a flutter_web_plugins.dart
  setUrlStrategy(PathUrlStrategy());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyWebProject',
      initialRoute: '/home',
      routes: {
        '/home': (context) => const HomePage(),
        '/creator': (context) => const CreatorLayout(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ResponsiveLayout(
            mobileResp: const MobileResponsive(),
            minWebResp: const MinimumWebResp(),
            tabletteResp: const TabletteResponsive(),
            desktopResp: const AnimatedCursor(
              child: DesktopResponsive(),
            )));
  }
}

/// This class allows to dispach all the different devices according to their size in width
class ResponsiveLayout extends StatelessWidget {
  final Widget mobileResp;
  final Widget minWebResp;
  final Widget tabletteResp;
  final Widget desktopResp;

  ResponsiveLayout(
      {required this.mobileResp,
      required this.minWebResp,
      required this.tabletteResp,
      required this.desktopResp});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 480) {
          return mobileResp;
        } else if (constraints.maxWidth < 780) {
          return minWebResp;
        } else if (constraints.maxWidth < 1000) {
          return tabletteResp;
        } else {
          return desktopResp;
        }
      },
    );
  }
}
