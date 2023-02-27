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
              height: screenSize.height + 45,
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
                                  'Au cours de ce projet j\'ai pu m\'anipuler plusieurs technologies t\'elque la génération de PDF et la gestion de stockage en mémoire local',
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
                                  'le vrai défi était de gèrer des list model en local et pouvoir les éditer j\'ai dû trouver une solution pour ce problème vu que toutes les solutions qui existaient ne prennais pas en chargent cette fonctionnalité',
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
                                  'J\'ai tellement appris à cette école que sa soit sur la façon de communiqué ou d\'expliquer des problèmes / solutions',
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
                                  'Grace a 19 je me suis vachement amélioré dans différentes technologies comme le C ou même la Shell qui sont omniprésents dans chaqune de nos applications',
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
                                  'J\'ai eu lopportunité de faire plusieurs travaux en équipe ce qui ma beaucoup stimule-j\'aime le faite de partager ces connaissances et de les metre en commun avec d\'autre développeurs',
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
                                  'Au Magasin  j\'avais la tache de faire rentrer les marchandise et de controller l\'état de chaque pièces pour les conformités',
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
                                  'Étant principalement sur la réception de coli j\'avais souvent des  "Mission" avec de grosses responsabilités telque la réception de coli extrêmement chère et fragile je devais donc manipuler ce genre de pièce avec précaution et concentration',
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
                                  'Mon rôle pricipale étais de monter les pièce mécanique sur les machine et de les cablier j\'ai donc développer plusieur compétence t\'elle que l\'électriciter la robotique et la pneumatique ',
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
