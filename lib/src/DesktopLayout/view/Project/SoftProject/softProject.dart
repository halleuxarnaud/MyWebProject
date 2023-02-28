import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:mywebproject/components/color.dart';

class SoftProject extends StatelessWidget {
  const SoftProject({super.key});

  @override
  Widget build(BuildContext context) {
    Size maxSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: maxSize.height,
        width: maxSize.width,
        color: MyWebProjectUI.kDefaultcolor,
        child: Center(
          child: Text(
            'Soft Project',
            style: TextStyle(
              color: MyWebProjectUI.secondaryColor,
              fontFamily: 'SpaceMono',
              fontWeight: FontWeight.w400,
              fontSize: 80,
            ),
          ),
        ),
      ),
    );
  }
}
