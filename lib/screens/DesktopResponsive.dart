import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';

import '../components/color.dart';
import '../widgets/AnimatedFooter.dart';

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
              _buildTop(size),
              _buildProduct(size),
              _buildContact(size),
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

  Container _buildContact(Size size) {
    return Container(
        height: size.height,
        width: size.width,
        color: kDefaultcolor,
        child: Padding(
          padding: const EdgeInsets.only(left: 400, right: 400, top: 150),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AutoSizeText(
                'Contact',
                presetFontSizes: [60, 50, 40, 30],
                maxLines: 1,
                style: TextStyle(
                  fontFamily: 'SpaceMono',
                  color: PrimaryColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 60,
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      const Text(
                        'FullName',
                        style: TextStyle(
                            color: SecondColor,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'SpaceMono'),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[],
                  ),
                ],
              )
            ],
          ),
        ));
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
