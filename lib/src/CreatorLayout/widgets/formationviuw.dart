import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FormationViuw extends StatelessWidget {
  const FormationViuw({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
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
                  'assets/image/graduation-cap.svg',
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              const Text(
                'FORMATIONS',
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
        const SizedBox(
          height: 20,
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'DÉVELOPPEMENT INFORMATIQUE',
              style: TextStyle(fontFamily: 'Helvetica', fontSize: 11),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'École 19 / 42 Network | 2022 - 2023',
              style: TextStyle(fontFamily: 'SweetSans', fontSize: 13),
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'APPRENTISAGE INFORMATIQUE',
              style: TextStyle(fontFamily: 'Helvetica', fontSize: 11),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Autodidacte | 2020 - 2022',
              style: TextStyle(fontFamily: 'SweetSans', fontSize: 13),
            ),
          ],
        ),
      ],
    );
  }
}
