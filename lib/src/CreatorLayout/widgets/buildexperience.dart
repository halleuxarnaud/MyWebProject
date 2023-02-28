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
                            'Développement Application Mobile',
                            style: TextStyle(
                                fontFamily: 'SweetSans',
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          const Text(
                            'MédicalNote | Bruxelles',
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
                                  'Au cours de ce projet, j\'ai pu m\'anipuler plusieurs technologies t\'elles que la génération de PDF et la gestion de stockage en mémoire locale',
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
                                  'Le vrai défi était de gèrer des lists model en local et de pouvoir les éditer. J\'ai dû trouver une solution pour ce problème étant donné que toutes les solutions qui existaient ne prennaient pas en charge cette fonctionnalité',
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
                            'Apprentisage Développement Informatique',
                            style: TextStyle(
                                fontFamily: 'SweetSans',
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          const Text(
                            'École 19 (42 Network) | Bruxelles',
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
                                  'Cette école m\'a beaucoup appris sur la manière de communiquer et d\'expliquer les problèmes et les solutions.',
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
                                  'Grâce à l\'école 19, j\'ai beaucoup progressé dans différentes technologies comme le C ou encore le Shell qui sont des languages de programmation omniprésents dans chacune de nos applications.',
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
                                  'J\'ai eu la possibilité de faire beaucoup de travail d\'équipe, ce qui a été très stimulant et enrichissant. En effet, j\'aime le fait de partager des connaissances et de les mettre en commun avec d\'autres développeurs.',
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
                                  'Au magasin, j\'avais pour tâche d\'apporter la marchandise et de vérifier l\'état de chaque pièce pour en assurer la conformité.',
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
                                  'Ayant pour mission principale la réception de colis, j\'ai souvent eu des "missions" avec de grandes responsabilités telles que la réception de colis extrêmement coûteux et fragiles, ce qui m\'a amené à gérer ce type de tâche avec soin et concentration.',
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
                            'Électromécanicien | Lambermont - Verviers / 4800',
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
                                  'Travailler chez Automation and Robotics m\'a donné l\'occasion d\'améliorer mes compétences en communication et d\'apprendre le fonctionnement d\'une entreprise.',
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
                                  'Mon rôle principal était d\'assembler les pièces mécaniques sur les machines et de les câbler. J\'ai donc développé plusieurs compétences telles que l\'électricité, la robotique et la pneumatique.',
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
