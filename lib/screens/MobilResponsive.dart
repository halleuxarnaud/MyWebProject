import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MobilResponsive extends StatefulWidget {
  const MobilResponsive({super.key});

  @override
  State<MobilResponsive> createState() => _MobilResponsiveState();
}

class _MobilResponsiveState extends State<MobilResponsive> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 500,
      color: Colors.red,
    );
  }
}
