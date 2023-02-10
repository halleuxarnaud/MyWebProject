import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/widgets/aboutme.dart';
import 'package:flutter_application_1/src/widgets/contactform.dart';
import 'package:flutter_application_1/src/widgets/displayparallax.dart';
import 'package:flutter_application_1/src/widgets/showlogo.dart';

import '../../components/color.dart';
import '../widgets/animatedfooter.dart';

class DesktopResponsive extends StatefulWidget {
  const DesktopResponsive({super.key});

  @override
  State<DesktopResponsive> createState() => _DesktopResponsiveState();
}

class _DesktopResponsiveState extends State<DesktopResponsive> {
  late ScrollController _scrollController;
  double _opacity = 1.0;
  bool position0 = true;

  @override
  void initState() {
    _scrollController = ScrollController()
      ..addListener(() {
        _onscroll();
      });
    super.initState();
  }

  double _currentscrollOffset = 0.0;
  double _maxScrollOffset = 0.0;

  void _onscroll() {
    setState(() {
      _opacity = 1 - _scrollController.offset / 100;
      _currentscrollOffset = _scrollController.offset;
      _maxScrollOffset = _scrollController.position.maxScrollExtent;
      if (_currentscrollOffset == 0) {
        position0 = true;
      } else {
        position0 = false;
      }
    });
  }

  @override
  NotificationListener<ScrollNotification> build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return NotificationListener<ScrollNotification>(
      onNotification: (scrollNotification) {
        if (scrollNotification is ScrollUpdateNotification) {
          setState(() {
            _opacity = 1 - _scrollController.offset / 1000;
            if (_opacity <= 0.1) {
              _opacity = 0;
            }
            print(_opacity);
          });
        }
        return false;
      },
      child: SingleChildScrollView(
          controller: _scrollController,
          child: Stack(
            children: [
              DisplayParallax(_currentscrollOffset, _maxScrollOffset),
              Column(
                children: <Widget>[
                  ShowLogo(position0, size, _opacity, _currentscrollOffset),
                  _Animationlogo(size),
                  AboutMe(size, _currentscrollOffset),
                  _buildProduct(size),
                  ContactForm(size),
                  AnimatedFooter(size, _maxScrollOffset, _currentscrollOffset)
                ],
              ),
            ],
          )),
    );
  }

  Container _Animationlogo(Size size) {
    return Container(
      height: size.height,
      width: size.width,
      color: kDefaultcolor,
      padding: const EdgeInsets.only(
        left: 220,
        right: 220,
        top: 50,
      ),
      child: Center(
        child: Text(
          'Logo Animation',
          style: TextStyle(fontSize: 40, color: secondColor),
        ),
      ),
    );
  }

  Column _buildProduct(Size size) {
    return Column(
      children: <Widget>[
        Container(
          height: size.height,
          width: size.width,
          color: kDefaultcolor,
          child: const Center(
              child: Text(
            'Products page 1',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 100),
          )),
        ),
        Container(
          height: size.height,
          width: size.width,
          color: kDefaultcolor,
          child: const Center(
              child: Text(
            'Products page 2',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 100),
          )),
        ),
      ],
    );
  }
}
