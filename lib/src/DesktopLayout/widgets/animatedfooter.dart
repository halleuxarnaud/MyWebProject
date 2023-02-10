import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/components/color.dart';

class AnimatedFooter extends StatefulWidget {
  final double _maxScrollOffset;
  final double _currentOffset;
  const AnimatedFooter(this._maxScrollOffset, this._currentOffset, {super.key});

  @override
  State<AnimatedFooter> createState() => _AnimatedFooterState();
}

class _AnimatedFooterState extends State<AnimatedFooter> {
  @override
  Widget build(BuildContext context) {
    return animatedFooterWidget();
  }

  animatedFooterWidget() {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 700),
      height: widget._currentOffset == widget._maxScrollOffset ? 60 : 0,
      curve: Curves.easeOut,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            height: 1,
          ),
          Row(
            children: const [
              Text(
                '© 2023 MyWebProject',
                style: TextStyle(
                  fontFamily: 'SpaceMono',
                  color: footerColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: 3.0, bottom: 3.0, left: 10.0, right: 10.0),
                child: Text(
                  'I',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Text(
                'HelloWorld',
                style: TextStyle(
                  fontFamily: 'SpaceMono',
                  color: footerColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 1,
          )
        ],
      ),
    );
  }
}
