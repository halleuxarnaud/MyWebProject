import 'package:flutter/material.dart';
import 'package:mywebproject/components/color.dart';

class CreatorPageMobile extends StatelessWidget {
  const CreatorPageMobile({super.key});

  @override
  Widget build(BuildContext context) {
    Size maxSize = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: maxSize.height,
          width: maxSize.width,
          color: MyWebProjectUI.kDefaultcolor,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    'Responsive mobile coming soon',
                    style: TextStyle(
                      color: MyWebProjectUI.secondaryColor,
                      fontFamily: 'SpaceMono',
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                ),
                Text(
                  'Sorry but you can view my curriculum vitae on a classic screen (Computer)',
                  style: TextStyle(
                    color: MyWebProjectUI.secondaryColor,
                    fontFamily: 'SpaceMono',
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
