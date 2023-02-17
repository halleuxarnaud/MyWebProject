import 'package:flutter/material.dart';
import 'package:mywebproject/src/DesktopLayout/view/aboutme.dart';
import 'package:mywebproject/src/DesktopLayout/view/product.dart';
import 'package:mywebproject/src/DesktopLayout/view/showlogo.dart';
import 'package:mywebproject/src/DesktopLayout/widgets/contactform.dart';
import 'package:mywebproject/src/DesktopLayout/widgets/displayparallax.dart';
import 'package:mywebproject/src/DesktopLayout/widgets/spacer.dart';

import '../../../components/color.dart';
import '../widgets/animatedfooter.dart';

class DesktopResponsive extends StatefulWidget {
  const DesktopResponsive({super.key});

  @override
  State<DesktopResponsive> createState() => _DesktopResponsiveState();
}

class _DesktopResponsiveState extends State<DesktopResponsive> {
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
                  ShowLogo(
                      _positionShowAnimation, screenSize, _opacityAdaptive),
                  SpacerScreenSize(screenSize),
                  AboutMe(screenSize, _currentscrollOffset),
                  Products(screenSize),
                  ContactForm(screenSize),
                  SpacerScreenSize(screenSize),
                  AnimatedFooter(
                      screenSize, _maxScrollOffset, _currentscrollOffset),
                ],
              ),
              Positioned(
                top: _position + screenSize.height / 2.5,
                width: screenSize.width,
                child: DisplayParallax(
                  _currentscrollOffset,
                  _maxScrollOffset,
                  screenSize,
                ),
              ),
            ],
          )),
    );
  }
}
