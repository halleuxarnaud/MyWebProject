import 'package:flutter/material.dart';
import 'package:mywebproject/src/MobileLayout/view/Home/aboutme.dart';
import 'package:mywebproject/src/MobileLayout/view/Home/animatedfooter.dart';
import 'package:mywebproject/src/MobileLayout/view/Home/contactform.dart';
import 'package:mywebproject/src/MobileLayout/view/Home/product.dart';
import 'package:mywebproject/src/MobileLayout/view/Home/showlogo.dart';
import 'package:mywebproject/src/MobileLayout/view/Home/warningMessage.dart';

import '../DesktopLayout/widgets/spacer.dart';

class MobileResponsive extends StatefulWidget {
  const MobileResponsive({super.key});

  @override
  State<MobileResponsive> createState() => _MobileResponsiveState();
}

class _MobileResponsiveState extends State<MobileResponsive> {
  late ScrollController _scrollController;
  double _opacityAdaptive = 1.0;
  bool _positionShowAnimation = true;
  double _position = 0.0;
  double _currentscrollOffset = 0.0;
  double _maxScrollOffset = 0.0;

  @override
  void initState() {
    _scrollController = ScrollController()
      ..addListener(() {
        _onscroll();
      });
    super.initState();
  }

  void _onscroll() {
    setState(() {
      _opacityAdaptive = 1 - _scrollController.offset / 100;
      _currentscrollOffset = _scrollController.offset;
      _maxScrollOffset = _scrollController.position.maxScrollExtent;
      _position = _currentscrollOffset;
      if (_currentscrollOffset == 0) {
        _positionShowAnimation = true;
      } else {
        _positionShowAnimation = false;
      }
    });
  }

  @override
  NotificationListener<ScrollNotification> build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return NotificationListener<ScrollNotification>(
      onNotification: (scrollNotification) {
        if (scrollNotification is ScrollUpdateNotification) {
          setState(() {
            _opacityAdaptive = 1 - _scrollController.offset / 1000;
            if (_opacityAdaptive <= 0.1) {
              _opacityAdaptive = 0;
            }
          });
        }
        return false;
      },
      child: SingleChildScrollView(
          controller: _scrollController,
          child: Stack(
            children: [
              Column(
                children: <Widget>[
                  //ShowLogo(
                  //_positionShowAnimation, screenSize, _opacityAdaptive),
                  Stack(
                    children: [
                      SpacerScreenSize(screenSize),
                      BetaVersionNotComplet()
                    ],
                  ),
                  AboutMe(screenSize, _currentscrollOffset),
                  Products(screenSize),
                  ContactForm(screenSize),
                  AnimatedFooter(
                      screenSize, _maxScrollOffset, _currentscrollOffset),
                ],
              ),
            ],
          )),
    );
  }
}
