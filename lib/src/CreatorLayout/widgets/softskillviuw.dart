import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SoftSkillViuw extends StatelessWidget {
  const SoftSkillViuw({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 3,
          width: 40,
          color: Colors.black,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 6, bottom: 6, left: 9),
          child: Row(
            children: [
              Container(
                height: 23,
                width: 23,
                child: SvgPicture.asset(
                  'assets/image/users.svg',
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              const Text(
                'SOFTSKILLS',
                style: TextStyle(
                    fontFamily: 'SweetSans',
                    fontWeight: FontWeight.bold,
                    fontSize: 13),
              )
            ],
          ),
        ),
        Container(
          height: 3,
          width: 40,
          color: Colors.black,
        ),
      ],
    );
  }
}
