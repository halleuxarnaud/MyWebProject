import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:mywebproject/components/color.dart';
import 'package:mywebproject/components/data.dart';
import 'package:mywebproject/components/style.dart';

import 'package:page_transition/page_transition.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class CurriculumSection extends StatefulWidget {
  final double _currentOffset;
  const CurriculumSection(this._currentOffset, {super.key});

  @override
  State<CurriculumSection> createState() => _CurriculumSectionState();
}

class _CurriculumSectionState extends State<CurriculumSection> {
  bool showMoreInformation = false;
  bool showButtonCreator = false;
  bool isButtonSelected = false;

  @override
  Widget build(BuildContext context) {
    Size maxSize = MediaQuery.of(context).size;

    return OutlinedButton(
        onPressed: () {
          Navigator.pushNamed(context, '/creator');
        },
        child: Text('Switch'));
  }
}
