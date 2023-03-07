import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:mywebproject/components/color.dart';

class BetaVersionNotComplet extends StatelessWidget {
  const BetaVersionNotComplet({super.key});

  @override
  Widget build(BuildContext context) {
    Size maxSize = MediaQuery.of(context).size;
    return Container(
      height: 200,
      width: maxSize.width,
      child: const Padding(
        padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
        child: Center(
          child: Text(
            'Before scrolling further, I want to specify that the site is under development so if there is any bug or other problem, . it is also possible that some features are not yet available',
            style: TextStyle(
              color: MyWebProjectUI.secondaryColor,
              fontFamily: 'SpaceMono',
              fontWeight: FontWeight.w400,
              fontSize: 13,
            ),
          ),
        ),
      ),
    );
  }
}
