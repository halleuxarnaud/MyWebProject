import 'package:flutter/material.dart';

class DisplayParallax extends StatefulWidget {
  final double _currentscrollOffset;
  final double _maxScrollOffset;
  final Size size;
  const DisplayParallax(
      this._currentscrollOffset, this._maxScrollOffset, this.size,
      {super.key});

  @override
  State<DisplayParallax> createState() => _DisplayParallaxState();
}

class _DisplayParallaxState extends State<DisplayParallax> {
  double opacity = 0;
  bool visible = true;
  double positionTop = 100;
  late double positionBottom = widget.size.width - 440;
  bool switchposition = true;

  @override
  void initState() {
    Future.delayed(Duration(microseconds: 1), () {
      setState(() {
        opacity = 0.4;
      });
    });
    super.initState();
  }

  void updateValue() {
    if (widget._currentscrollOffset > widget._maxScrollOffset / 2) {
      switchposition = false;
    } else {
      switchposition = true;
    }
    if (widget._currentscrollOffset >= widget.size.height / 10) {
      visible = true;
      positionTop = widget._currentscrollOffset;
    }
    if (widget._currentscrollOffset >= widget.size.height * 1.5 ||
        widget._maxScrollOffset / 2 < widget._currentscrollOffset) {
      positionTop = widget.size.width;
    }
    if (widget._currentscrollOffset > widget._maxScrollOffset / 1.35) {
      positionBottom = widget._maxScrollOffset - widget._currentscrollOffset;
    }

    print('PositionBottom $positionBottom');
    print('PositionTop $positionTop');
    print(widget._maxScrollOffset);
  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      updateValue();
    });
    return Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: visible
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedOpacity(
                    duration: Duration(seconds: 3),
                    opacity: opacity,
                    child: Image.asset(
                      'assets/image/chevronG.png',
                    ),
                  ),
                  SizedBox(
                      width: switchposition ? positionTop : positionBottom),
                  AnimatedOpacity(
                      duration: Duration(seconds: 3),
                      opacity: opacity,
                      child: Image.asset('assets/image/chevronD.png')),
                ],
              )
            : null);
  }
}
