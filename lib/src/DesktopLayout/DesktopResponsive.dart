import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/DesktopLayout/contactform.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';

import '../../components/color.dart';
import 'animatedfooter.dart';

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
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return WebSmoothScroll(
      controller: _scrollController,
      animationDuration: 300,
      child: SingleChildScrollView(
          //physics: const NeverScrollableScrollPhysics(),
          controller: _scrollController,
          child: Column(
            children: <Widget>[
              //_buildTop(size),
              //_buildProduct(size),
              ContactForm(size),
              _buildBottom(size),
            ],
          )),
    );
  }

  Column _buildTop(Size size) {
    return Column(
      children: [
        Container(
          height: size.height,
          width: size.width,
          color: kDefaultcolor,
          child: const Center(
              child: Text(
            'Logo (Add dispersion on logo)',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 100),
          )),
        ),
      ],
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            height: 1,
          ),
          const Text(
            'Logo Crochet Parallax asembler',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 100),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AnimatedFooter(_maxScrollOffset, _currentscrollOffset),
          ),
        ],
      ),
    );
  }
}
