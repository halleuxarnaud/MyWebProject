import 'package:flutter/material.dart';
import 'package:mywebproject/components/color.dart';
import 'package:mywebproject/components/data.dart';

class AnimatedFooter extends StatefulWidget {
  const AnimatedFooter({super.key});

  @override
  State<AnimatedFooter> createState() => _AnimatedFooterState();
}

class _AnimatedFooterState extends State<AnimatedFooter> {
  @override
  Widget build(BuildContext context) {
    Size maxSize = MediaQuery.of(context).size;
    return Container(
      height: 100,
      width: maxSize.width,
      color: MyWebProjectUI.kDefaultcolor,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 1,
          ),
          Row(
            children: [
              Text(
                MyWebProjectData.footer1,
                style: TextStyle(
                  fontFamily: 'SpaceMono',
                  color: MyWebProjectUI.footerColor,
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
                MyWebProjectData.footer2,
                style: TextStyle(
                  fontFamily: 'SpaceMono',
                  color: MyWebProjectUI.footerColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 1,
          )
        ],
      ),
    );
  }
}
