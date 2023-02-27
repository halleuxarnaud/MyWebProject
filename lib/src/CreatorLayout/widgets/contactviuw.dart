import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactViuw extends StatelessWidget {
  const ContactViuw({super.key});

  _LaunchUrlLinkedin() async {
    const url = 'https://www.linkedin.com/in/arnaud-halleux-64a061258';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _LaunchUrlGithub() async {
    const url = 'https://github.com/halleuxarnaud';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    Size maxSize = MediaQuery.of(context).size;
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
                  'CONTACTS',
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
                      child: Image.asset('assets/image/telephone.png')),
                  const SizedBox(
                    width: 4,
                  ),
                  const Text(
                    '0472/30.89.13',
                    style: TextStyle(fontFamily: 'SweetSans', fontSize: 13),
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
                      child: Image.asset('assets/image/email.png')),
                  const SizedBox(
                    width: 4,
                  ),
                  const Text(
                    'halleuxarnaudpro@gmail.com',
                    style: TextStyle(fontFamily: 'SweetSans', fontSize: 13),
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
                      child: Image.asset('assets/image/localisateur.png')),
                  const SizedBox(
                    width: 4,
                  ),
                  const Text(
                    'Bruxelles, Belgique',
                    style: TextStyle(fontFamily: 'SweetSans', fontSize: 13),
                  ),
                ],
              ),
              SizedBox(
                height: 3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      _LaunchUrlLinkedin();
                    },
                    icon: Image.asset('assets/image/linkedin.png'),
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  IconButton(
                    onPressed: () {
                      _LaunchUrlGithub();
                    },
                    icon: Image.asset('assets/image/github.png'),
                  ),
                ],
              ),
              SizedBox(
                height: 3,
              ),
            ],
          )
        ],
      ),
    );
  }
}
