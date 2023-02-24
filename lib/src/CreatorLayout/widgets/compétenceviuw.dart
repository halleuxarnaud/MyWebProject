import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CompetenceViuw extends StatelessWidget {
  const CompetenceViuw({super.key});

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
              SizedBox(
                height: 23,
                width: 23,
                child: SvgPicture.asset(
                  'assets/image/api.svg',
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              const Text(
                'COMPÉTENCES',
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Flutter',
                  style: TextStyle(fontFamily: 'Helvetica', fontSize: 15),
                ),
                SizedBox(
                  width: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                          height: 15,
                          width: 15,
                          child: Image.asset('assets/image/full.png')),
                      const SizedBox(
                        width: 5,
                      ),
                      SizedBox(
                          height: 15,
                          width: 15,
                          child: Image.asset('assets/image/full.png')),
                      const SizedBox(
                        width: 5,
                      ),
                      SizedBox(
                          height: 15,
                          width: 15,
                          child: Image.asset('assets/image/full.png')),
                      const SizedBox(
                        width: 5,
                      ),
                      SizedBox(
                          height: 15,
                          width: 15,
                          child: Image.asset('assets/image/full.png')),
                      const SizedBox(
                        width: 5,
                      ),
                      SizedBox(
                          height: 15,
                          width: 15,
                          child: Image.asset('assets/image/full.png')),
                      const SizedBox(
                        width: 5,
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Dart',
                  style: TextStyle(fontFamily: 'Helvetica', fontSize: 15),
                ),
                SizedBox(
                  width: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                          height: 15,
                          width: 15,
                          child: Image.asset('assets/image/full.png')),
                      const SizedBox(
                        width: 5,
                      ),
                      SizedBox(
                          height: 15,
                          width: 15,
                          child: Image.asset('assets/image/full.png')),
                      const SizedBox(
                        width: 5,
                      ),
                      SizedBox(
                          height: 15,
                          width: 15,
                          child: Image.asset('assets/image/full.png')),
                      const SizedBox(
                        width: 5,
                      ),
                      SizedBox(
                          height: 15,
                          width: 15,
                          child: Image.asset('assets/image/full.png')),
                      const SizedBox(
                        width: 5,
                      ),
                      SizedBox(
                          height: 15,
                          width: 15,
                          child: Image.asset('assets/image/Umpty.png')),
                      const SizedBox(
                        width: 5,
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Firebase',
                  style: TextStyle(fontFamily: 'Helvetica', fontSize: 15),
                ),
                SizedBox(
                  width: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                          height: 15,
                          width: 15,
                          child: Image.asset('assets/image/full.png')),
                      const SizedBox(
                        width: 5,
                      ),
                      SizedBox(
                          height: 15,
                          width: 15,
                          child: Image.asset('assets/image/full.png')),
                      const SizedBox(
                        width: 5,
                      ),
                      SizedBox(
                          height: 15,
                          width: 15,
                          child: Image.asset('assets/image/Umpty.png')),
                      const SizedBox(
                        width: 5,
                      ),
                      SizedBox(
                          height: 15,
                          width: 15,
                          child: Image.asset('assets/image/Umpty.png')),
                      const SizedBox(
                        width: 5,
                      ),
                      SizedBox(
                          height: 15,
                          width: 15,
                          child: Image.asset('assets/image/Umpty.png')),
                      const SizedBox(
                        width: 5,
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'GIT',
                  style: TextStyle(fontFamily: 'Helvetica', fontSize: 15),
                ),
                SizedBox(
                  width: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                          height: 15,
                          width: 15,
                          child: Image.asset('assets/image/full.png')),
                      const SizedBox(
                        width: 5,
                      ),
                      SizedBox(
                          height: 15,
                          width: 15,
                          child: Image.asset('assets/image/full.png')),
                      const SizedBox(
                        width: 5,
                      ),
                      SizedBox(
                          height: 15,
                          width: 15,
                          child: Image.asset('assets/image/full.png')),
                      const SizedBox(
                        width: 5,
                      ),
                      SizedBox(
                          height: 15,
                          width: 15,
                          child: Image.asset('assets/image/full.png')),
                      const SizedBox(
                        width: 5,
                      ),
                      SizedBox(
                          height: 15,
                          width: 15,
                          child: Image.asset('assets/image/full.png')),
                      const SizedBox(
                        width: 5,
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'C',
                  style: TextStyle(fontFamily: 'Helvetica', fontSize: 15),
                ),
                SizedBox(
                  width: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                          height: 15,
                          width: 15,
                          child: Image.asset('assets/image/full.png')),
                      const SizedBox(
                        width: 5,
                      ),
                      SizedBox(
                          height: 15,
                          width: 15,
                          child: Image.asset('assets/image/full.png')),
                      const SizedBox(
                        width: 5,
                      ),
                      SizedBox(
                          height: 15,
                          width: 15,
                          child: Image.asset('assets/image/full.png')),
                      const SizedBox(
                        width: 5,
                      ),
                      SizedBox(
                          height: 15,
                          width: 15,
                          child: Image.asset('assets/image/Umpty.png')),
                      const SizedBox(
                        width: 5,
                      ),
                      SizedBox(
                          height: 15,
                          width: 15,
                          child: Image.asset('assets/image/Umpty.png')),
                      const SizedBox(
                        width: 5,
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        )
      ],
    );
  }
}
