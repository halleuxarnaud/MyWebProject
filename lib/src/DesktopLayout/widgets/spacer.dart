import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:mywebproject/components/color.dart';

class SpacermaxSize extends StatelessWidget {
  const SpacermaxSize({super.key});

  @override
  Widget build(BuildContext context) {
    Size maxSize = MediaQuery.of(context).size;
    return Container(
      color: MyWebProjectUI.kDefaultcolor,
      height: maxSize.height + 300,
      width: maxSize.width,
    );
  }
}
