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
      height: maxSize.height,
      width: maxSize.width,
      child: Padding(
        padding: EdgeInsets.fromLTRB(
            maxSize.width * 0.25, 0, maxSize.width * 0.25, 0),
        child: Center(
          child: Text(
            'Before scrolling further, I would like to point out that the site is under development so if there is any bug or other disturbing thing, it will be corrected. it is also possible that some functionality is not yet available',
            style: TextStyle(
              color: MyWebProjectUI.secondaryColor,
              fontFamily: 'SpaceMono',
              fontWeight: FontWeight.w400,
              fontSize: 30,
            ),
          ),
        ),
      ),
    );
  }
}
