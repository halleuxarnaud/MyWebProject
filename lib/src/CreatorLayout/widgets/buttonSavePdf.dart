import 'package:flutter/material.dart';
import 'package:mywebproject/src/CreatorLayout/widgets/generateurpdfEN.dart';
import 'package:mywebproject/src/CreatorLayout/widgets/generateurpdfFR.dart';

class ButtonSavePdf extends StatefulWidget {
  final String buttonText;
  final Color couleur;
  final bool langue;

  const ButtonSavePdf(
      {super.key,
      required this.buttonText,
      required this.couleur,
      required this.langue});

  @override
  _ButtonSavePdfState createState() => _ButtonSavePdfState();
}

class _ButtonSavePdfState extends State<ButtonSavePdf> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          _isHovered = true;
        });
      },
      onExit: (event) {
        setState(() {
          _isHovered = false;
        });
      },
      child: ElevatedButton(
        onPressed: () {
          widget.langue
              ? GeneratePDFFR().createPDF()
              : GeneratePDFEN().createPDF();
        },
        style: ElevatedButton.styleFrom(
          primary: widget.couleur,
          elevation: _isHovered
              ? 8
              : 10, // Change the elevation when the button is hovered
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            widget.buttonText,
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
