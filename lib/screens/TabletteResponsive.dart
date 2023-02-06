import 'package:flutter/material.dart';

class TabletteResponsive extends StatefulWidget {
  const TabletteResponsive({super.key});

  @override
  State<TabletteResponsive> createState() => _TabletteResponsiveState();
}

class _TabletteResponsiveState extends State<TabletteResponsive> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 40,
          width: 50,
          color: Colors.blue,
        ),
        Center(child: Text('Tablette Responsive'))
      ],
    );
  }
}
