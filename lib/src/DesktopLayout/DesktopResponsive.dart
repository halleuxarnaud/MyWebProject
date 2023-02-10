import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/DesktopLayout/testchatgpt.dart';
import 'package:flutter_application_1/src/DesktopLayout/widgets/aboutme.dart';
import 'package:flutter_application_1/src/DesktopLayout/widgets/contactform.dart';
import 'package:flutter_application_1/src/DesktopLayout/widgets/showlogo.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';

import '../../components/color.dart';
import 'widgets/animatedfooter.dart';

class DesktopResponsive extends StatefulWidget {
  const DesktopResponsive({super.key});

  @override
  State<DesktopResponsive> createState() => _DesktopResponsiveState();
}

class _DesktopResponsiveState extends State<DesktopResponsive> {
  late ScrollController _scrollController;

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
      _currentscrollOffset = _scrollController.offset;
      _maxScrollOffset = _scrollController.position.maxScrollExtent;
      print(_currentscrollOffset);
      print(_maxScrollOffset);
    });
  }

  @override
  SingleChildScrollView build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
        //physics: const NeverScrollableScrollPhysics(),
        controller: _scrollController,
        child: Column(
          children: <Widget>[
            ShowLogo(size),
            _Animationlogo(size),
            buildAbout(size),
            _buildProduct(size),
            ContactForm(size),
            _buildBottom(size),
          ],
        ));
  }

  Container buildAbout(Size size) {
    return Container(
      height: size.height,
      width: size.width,
      color: kDefaultcolor,
      child: AboutMe(size, _currentscrollOffset),
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

  Container _buildBottom(Size size) {
    return Container(
      height: size.height,
      width: size.width,
      color: kDefaultcolor,
      child: Stack(
        alignment: Alignment.center,
        children: [
          const SizedBox(
            height: 1,
          ),
          const Center(
            child: Text(
              'Logo Crochet Parallax asembler',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 100),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: AnimatedFooter(_maxScrollOffset, _currentscrollOffset),
            ),
          ),
        ],
      ),
    );
  }
}
