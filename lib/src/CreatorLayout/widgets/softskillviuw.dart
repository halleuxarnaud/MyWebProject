import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SoftSkillViuw extends StatelessWidget {
  const SoftSkillViuw({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      child: Column(
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
          const SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                      height: 15,
                      width: 15,
                      child: Image.asset('assets/image/user.png')),
                  const SizedBox(
                    width: 12,
                  ),
                  const Text(
                    'Sociable',
                    style: TextStyle(fontFamily: 'Helvetica', fontSize: 15),
                  ),
                ],
              ),
              SizedBox(
                height: 3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                      height: 15,
                      width: 15,
                      child: Image.asset('assets/image/search.png')),
                  const SizedBox(
                    width: 12,
                  ),
                  const Text(
                    'Curieux',
                    style: TextStyle(fontFamily: 'Helvetica', fontSize: 15),
                  ),
                ],
              ),
              SizedBox(
                height: 3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                      height: 15,
                      width: 15,
                      child: Image.asset('assets/image/help.png')),
                  const SizedBox(
                    width: 12,
                  ),
                  const Text(
                    'Aime aider',
                    style: TextStyle(fontFamily: 'Helvetica', fontSize: 15),
                  ),
                ],
              ),
              SizedBox(
                height: 3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                      height: 15,
                      width: 15,
                      child: Image.asset('assets/image/knowledge.png')),
                  const SizedBox(
                    width: 12,
                  ),
                  const FittedBox(
                    child: Text(
                      'Aime apprendre',
                      style: TextStyle(fontFamily: 'Helvetica', fontSize: 15),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                      height: 15,
                      width: 15,
                      child: Image.asset('assets/image/crayon.png')),
                  const SizedBox(
                    width: 12,
                  ),
                  const FittedBox(
                    child: Text(
                      'Créatif',
                      style: TextStyle(fontFamily: 'Helvetica', fontSize: 15),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
