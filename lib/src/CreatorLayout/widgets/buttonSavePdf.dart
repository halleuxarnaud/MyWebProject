import 'package:flutter/material.dart';

class ButtonSavePdf extends StatefulWidget {
  final String buttonText;

  const ButtonSavePdf({super.key, required this.buttonText});

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
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          primary: Colors.green,
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
