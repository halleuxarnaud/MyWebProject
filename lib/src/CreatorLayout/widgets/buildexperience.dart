import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class BuildExperience extends StatelessWidget {
  const BuildExperience({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
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
              height: screenSize.height,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              SizedBox(
                height: 250,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
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
                            'Developpement Application Mobile',
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
                                  '',
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
                                  'Contrairement à une opinion répandue, le Lorem Ipsum n\'est pas simplement du texte aléatoire. Il trouve ses racines dans une oeuvre de la littérature latine classique datant de 45 av. J.-C., le',
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
                                  'Contrairement à une opinion répandue, le Lorem Ipsum n\'est pas simplement du texte aléatoire. Il trouve ses racines dans une oeuvre de la littérature latine classique datant de 45 av. J.-C., le',
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
              SizedBox(
                height: 250,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
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
                            'École 19 (42 Netork) | Bruxelles',
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
                                  '',
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
                                  'Contrairement à une opinion répandue, le Lorem Ipsum n\'est pas simplement du texte aléatoire. Il trouve ses racines dans une oeuvre de la littérature latine classique datant de 45 av. J.-C., le',
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
                                  'Contrairement à une opinion répandue, le Lorem Ipsum n\'est pas simplement du texte aléatoire. Il trouve ses racines dans une oeuvre de la littérature latine classique datant de 45 av. J.-C., le',
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
              SizedBox(
                height: 250,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
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
                            'Électomécanicien',
                            style: TextStyle(
                                fontFamily: 'SweetSans',
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          const Text(
                            'Automation & Robotics | Lambermont - Verviers',
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
                                  'En travaillant chez automation et robotics j\'ai eu l\'occasion d\'améliorer ma communication et d\'apprendre comment une entreprise fonctionne',
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
//                                   Durant toute ses année j'ai pu explorer plusieur poste au sain de Automation & Robotics
// J'ai commencer par la production pour finir a la Logistique
// je sais donc que l'orsque qu'on réalise quelque
// Durant toute ses année j'ai pu explorer plusieur poste au sain de Automation & Robotics
// J'ai commencer par la production pour finir a la Logistique
// je sais donc que l'orsque qu'on réalise quelque
// Durant toutes ses années j'ai pu explorer plusieurs postes au sein d'Automation & Robotics
// J'ai commencé par la production pour finir à la logistique
// je sais donc que lorsque qu'on réalise quelque
                                  'Contrairement à une opinion répandue, le Lorem Ipsum n\'est pas simplement du texte aléatoire. Il trouve ses racines dans une oeuvre de la littérature latine classique datant de 45 av. J.-C., le',
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
                                  'Contrairement à une opinion répandue, le Lorem Ipsum n\'est pas simplement du texte aléatoire. Il trouve ses racines dans une oeuvre de la littérature latine classique datant de 45 av. J.-C., le',
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
