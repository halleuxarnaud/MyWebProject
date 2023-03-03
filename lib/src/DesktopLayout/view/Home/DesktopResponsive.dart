import 'package:flutter/material.dart';
import 'package:mywebproject/src/DesktopLayout/view/Home/Curriculumvitae.dart';
import 'package:mywebproject/src/DesktopLayout/view/Home/aboutme.dart';
import 'package:mywebproject/src/DesktopLayout/view/Home/product.dart';
import 'package:mywebproject/src/DesktopLayout/view/Home/showlogo.dart';
import 'package:mywebproject/src/DesktopLayout/view/Home/contactform.dart';
import 'package:mywebproject/src/DesktopLayout/view/Home/warningMessage.dart';
import 'package:mywebproject/src/DesktopLayout/widgets/displayparallax.dart';
import 'package:mywebproject/src/DesktopLayout/widgets/spacer.dart';

import '../../../../components/color.dart';
import 'animatedfooter.dart';

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
    Size maxSize = MediaQuery.of(context).size;
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
                  ShowLogo(_positionShowAnimation, maxSize, _opacityAdaptive),
                  Stack(
                    children: [SpacermaxSize(maxSize), BetaVersionNotComplet()],
                  ),
                  AboutMe(_currentscrollOffset),
                  CurriculumSection(
                    _currentscrollOffset,
                    _maxScrollOffset,
                  ),
                  Products(maxSize),
                  ContactForm(maxSize),
                  //SpacermaxSize(maxSize),
                  AnimatedFooter(
                      maxSize, _maxScrollOffset, _currentscrollOffset),
                ],
              ),
              // Positioned(
              //   top: _position + maxSize.height / 2.5,
              //   width: maxSize.width,
              //   child: DisplayParallax(
              //     _currentscrollOffset,
              //     _maxScrollOffset,
              //     maxSize,
              //   ),
              // ),
            ],
          )),
    );
  }
}
