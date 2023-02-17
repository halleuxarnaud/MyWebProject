import 'package:flutter/material.dart';
import 'package:mywebproject/components/color.dart';

class TabletteResponsive extends StatefulWidget {
  const TabletteResponsive({super.key});

  @override
  State<TabletteResponsive> createState() => _TabletteResponsiveState();
}

class _TabletteResponsiveState extends State<TabletteResponsive> {
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
          'Tablette Responsive Soon',
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
