import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:mywebproject/components/color.dart';

class MinimumWebResp extends StatefulWidget {
  const MinimumWebResp({super.key});

  @override
  State<MinimumWebResp> createState() => _MinimumWebRespState();
}

class _MinimumWebRespState extends State<MinimumWebResp> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: size.height,
          width: size.width,
          color: MyWebProjectUI.kDefaultcolor,
        ),
        Center(
            child: Text(
          'MinWebResponsive Soon',
          style: TextStyle(
            color: MyWebProjectUI.secondaryColor,
            fontFamily: 'SpaceMono',
            fontWeight: FontWeight.w400,
            fontSize: 30,
          ),
        ))
      ],
    );
  }
}
