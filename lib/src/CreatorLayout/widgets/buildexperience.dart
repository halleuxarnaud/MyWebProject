import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class BuildExperience extends StatelessWidget {
  const BuildExperience({super.key});

  @override
  Widget build(BuildContext context) {
    Size maxSize = MediaQuery.of(context).size;
    return Stack(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              width: 70,
            ),
            Container(
              color: Colors.black.withOpacity(0.5),
              width: 2,
              height: maxSize.height + 45,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 60),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Column(
                          children: [
                            Text(
                              '2022',
                              style: TextStyle(
                                  fontFamily: 'Helvetica', fontSize: 12),
                            ),
                            Text(
                              '2023',
                              style: TextStyle(
                                  fontFamily: 'Helvetica', fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 8,
                        width: 8,
                        decoration: BoxDecoration(
                            color: const Color(0XFF41238a),
                            borderRadius: BorderRadius.circular(50)),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'D??veloppement Application Mobile',
                            style: TextStyle(
                                fontFamily: 'SweetSans',
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          const Text(
                            'M??dicalNote | Bruxelles',
                            style: TextStyle(
                                fontFamily: 'SweetSans', fontSize: 12),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 5,
                                width: 5,
                                decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.8),
                                    borderRadius: BorderRadius.circular(50)),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const SizedBox(
                                width: 400,
                                child: Text(
                                  'Au cours de ce projet, j\'ai pu manipuler plusieurs technologies telles que la g??n??ration de PDF et la gestion de stockage en m??moire locale.',
                                  style: TextStyle(
                                      fontFamily: 'SweetSans', fontSize: 12),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 5,
                                width: 5,
                                decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.8),
                                    borderRadius: BorderRadius.circular(50)),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const SizedBox(
                                width: 400,
                                child: Text(
                                  'Le vrai d??fi ??tait de g??rer des lists model en local et de pouvoir les ??diter. J\'ai d?? trouver une solution pour ce probl??me ??tant donn?? que toutes les solutions qui existaient ne prennaient pas en charge cette fonctionnalit??.',
                                  style: TextStyle(
                                      fontFamily: 'SweetSans', fontSize: 12),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 60),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Column(
                          children: [
                            Text(
                              '2022',
                              style: TextStyle(
                                  fontFamily: 'Helvetica', fontSize: 12),
                            ),
                            Text(
                              '2023',
                              style: TextStyle(
                                  fontFamily: 'Helvetica', fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 8,
                        width: 8,
                        decoration: BoxDecoration(
                            color: const Color(0XFF41238a),
                            borderRadius: BorderRadius.circular(50)),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Apprentisage D??veloppement Informatique',
                            style: TextStyle(
                                fontFamily: 'SweetSans',
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          const Text(
                            '??cole 19 (42 Network) | Bruxelles',
                            style: TextStyle(
                                fontFamily: 'SweetSans', fontSize: 12),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 5,
                                width: 5,
                                decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.8),
                                    borderRadius: BorderRadius.circular(50)),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const SizedBox(
                                width: 400,
                                child: Text(
                                  'Cette ??cole m\'a beaucoup appris sur la mani??re de communiquer et d\'expliquer les probl??mes et les solutions.',
                                  style: TextStyle(
                                      fontFamily: 'SweetSans', fontSize: 12),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 5,
                                width: 5,
                                decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.8),
                                    borderRadius: BorderRadius.circular(50)),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const SizedBox(
                                width: 400,
                                child: Text(
                                  'Gr??ce ?? l\'??cole 19, j\'ai beaucoup progress?? dans diff??rentes technologies comme le C ou encore le Shell qui sont des languages de programmation omnipr??sents dans chacune de nos applications.',
                                  style: TextStyle(
                                      fontFamily: 'SweetSans', fontSize: 12),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 5,
                                width: 5,
                                decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.8),
                                    borderRadius: BorderRadius.circular(50)),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const SizedBox(
                                width: 400,
                                child: Text(
                                  'J\'ai eu la possibilit?? de faire beaucoup de travail d\'??quipe, ce qui a ??t?? tr??s stimulant et enrichissant.',
                                  style: TextStyle(
                                      fontFamily: 'SweetSans', fontSize: 12),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 60),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '2020',
                              style: TextStyle(
                                  fontFamily: 'Helvetica', fontSize: 12),
                            ),
                            Text(
                              '2022',
                              style: TextStyle(
                                  fontFamily: 'Helvetica', fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 8,
                        width: 8,
                        decoration: BoxDecoration(
                            color: const Color(0XFF41238a),
                            borderRadius: BorderRadius.circular(50)),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Automation & Robotics',
                            style: TextStyle(
                                fontFamily: 'SweetSans',
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          const Text(
                            'Magasinier | Lambermont - Verviers / 4800',
                            style: TextStyle(
                                fontFamily: 'SweetSans', fontSize: 12),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 5,
                                width: 5,
                                decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.8),
                                    borderRadius: BorderRadius.circular(50)),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const SizedBox(
                                width: 400,
                                child: Text(
                                  'Au magasin, j\'avais pour t??che d\'apporter la marchandise et de v??rifier l\'??tat de chaque pi??ce pour en assurer la conformit??.',
                                  style: TextStyle(
                                      fontFamily: 'SweetSans', fontSize: 12),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 5,
                                width: 5,
                                decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.8),
                                    borderRadius: BorderRadius.circular(50)),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const SizedBox(
                                width: 400,
                                child: Text(
                                  'Ayant pour mission principale la r??ception de colis, j\'ai souvent eu des "missions" avec de grandes responsabilit??s telles que la r??ception de colis extr??mement co??teux et fragiles, ce qui m\'a amen?? ?? g??rer ce type de t??che avec soin et concentration.',
                                  style: TextStyle(
                                      fontFamily: 'SweetSans', fontSize: 12),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 60),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '2014',
                              style: TextStyle(
                                  fontFamily: 'Helvetica', fontSize: 12),
                            ),
                            Text(
                              '2020',
                              style: TextStyle(
                                  fontFamily: 'Helvetica', fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 8,
                        width: 8,
                        decoration: BoxDecoration(
                            color: const Color(0XFF41238a),
                            borderRadius: BorderRadius.circular(50)),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Automation & Robotics',
                            style: TextStyle(
                                fontFamily: 'SweetSans',
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          const Text(
                            '??lectrom??canicien | Lambermont - Verviers / 4800',
                            style: TextStyle(
                                fontFamily: 'SweetSans', fontSize: 12),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 5,
                                width: 5,
                                decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.8),
                                    borderRadius: BorderRadius.circular(50)),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const SizedBox(
                                width: 400,
                                child: Text(
                                  'Travailler chez Automation and Robotics m\'a donn?? l\'occasion d\'am??liorer mes comp??tences en communication et d\'apprendre le fonctionnement d\'une entreprise.',
                                  style: TextStyle(
                                      fontFamily: 'SweetSans', fontSize: 12),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 5,
                                width: 5,
                                decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.8),
                                    borderRadius: BorderRadius.circular(50)),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const SizedBox(
                                width: 400,
                                child: Text(
                                  'Mon r??le principal ??tait d\'assembler les pi??ces m??caniques sur les machines et de les c??bler. J\'ai donc d??velopp?? plusieurs comp??tences telles que l\'??lectricit??, la robotique et la pneumatique.',
                                  style: TextStyle(
                                      fontFamily: 'SweetSans', fontSize: 12),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ]),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
