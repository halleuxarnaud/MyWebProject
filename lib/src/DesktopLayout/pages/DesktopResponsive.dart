import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/DesktopLayout/widgets/aboutme.dart';
import 'package:flutter_application_1/src/DesktopLayout/widgets/contactform.dart';
import 'package:flutter_application_1/src/DesktopLayout/widgets/displayparallax.dart';
import 'package:flutter_application_1/src/DesktopLayout/widgets/product.dart';
import 'package:flutter_application_1/src/DesktopLayout/widgets/showlogo.dart';
import '../../../components/color.dart';
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
      _opacity = 1 - _scrollController.offset / 100;
      _currentscrollOffset = _scrollController.offset;
      _maxScrollOffset = _scrollController.position.maxScrollExtent;
      _position = _currentscrollOffset;
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
            // print('Opacity: $_opacity');
            // print('Current offset: $_currentscrollOffset');
            // print('Max offset $_maxScrollOffset');
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
                  ShowLogo(position0, size, _opacity, _currentscrollOffset),
                  Container(
                    color: kDefaultcolor,
                    height: size.height + 300,
                    width: size.width,
                  ),
                  AboutMe(size, _currentscrollOffset),
                  Products(size),
                  ContactForm(size),
                  Container(
                    color: kDefaultcolor,
                    height: size.height + 300,
                    width: size.width,
                  ),
                  AnimatedFooter(size, _maxScrollOffset, _currentscrollOffset),
                ],
              ),
              Positioned(
                top: _position + size.height / 2.5,
                width: size.width,
                child: DisplayParallax(
                    _currentscrollOffset, _maxScrollOffset, size,),
              ),
            ],
          )),
    );
  }
}
