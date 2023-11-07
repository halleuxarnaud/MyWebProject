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
                              '2023',
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
                            'Développeur Junior Full Stack Flutter',
                            style: TextStyle(
                                fontFamily: 'SweetSans',
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          const Text(
                            'HappyHoursMarket | Bruxelles',
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
                                  "Participation active au développement de l'app",
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
                                  "Design UX/UI de l'app",
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
                                  "Rédaction de procédures et de documentations",
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
                                  "Participation et organisation de réunions avec l'équipe IT / Marketing",
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
                                  "Création et maintenance de nouvelles fonctionnalités",
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
                                  "Création de plusieur fonctionnalités: PDF, mémoire local, etc.",
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
                                  "Participation et organisation de réunions avec l'equipe IT / Marketing",
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
                                  "Résolution de problèmes techniques",
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
                            'Etude en Développement Informatique',
                            style: TextStyle(
                                fontFamily: 'SweetSans',
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          const Text(
                            "Ecole 19 (42 Paris) | Bruxelles",
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
                                  "Apprentissage de différentes technologies: Flutter, Firebase, Dart, GIT, C, Shell",
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
                                  "Travail en autodidacte et travail d'équipe",
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
                                  "Résolution de problèmes techniques",
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
                            'Electromécanicien - Magasinier | Lambermont - Verviers / 4800',
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
                                  "Gestion d'un groupe d'étudiants",
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
                                  "Montage mécanique et électrique de machines",
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
                                  "Réception et envois de colis avec contrôle d'entrée et de sortie",
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
