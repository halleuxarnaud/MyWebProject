import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:mywebproject/components/color.dart';

class SoftProjectDisplayApp extends StatelessWidget {
  const SoftProjectDisplayApp({super.key});

  @override
  Widget build(BuildContext context) {
    Size maxSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: maxSize.height,
        width: maxSize.width,
        color: MyWebProjectUI.kDefaultcolor,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 1,
              ),
              Column(
                children: [
                  Text(
                    'No project',
                    style: TextStyle(
                      color: MyWebProjectUI.secondaryColor,
                      fontFamily: 'SpaceMono',
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    'realized for the moment',
                    style: TextStyle(
                      color: MyWebProjectUI.secondaryColor,
                      fontFamily: 'SpaceMono',
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 1,
              ),
            ]),
      ),
    );
  }
}
