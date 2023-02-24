import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ButtonBack extends StatefulWidget {
  final String buttonText;

  const ButtonBack({super.key, required this.buttonText});

  @override
  _ButtonBackState createState() => _ButtonBackState();
}

class _ButtonBackState extends State<ButtonBack> {
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
          Navigator.pushNamed(context, '/home');
        },
        style: ElevatedButton.styleFrom(
          primary: Colors.red,
          elevation: _isHovered
              ? 8
              : 10, // Change the elevation when the button is hovered
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                width: 1,
              ),
              Row(
                children: [
                  Text(
                    widget.buttonText,
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  RotatedBox(
                    quarterTurns: 90,
                    child: SvgPicture.asset(
                      'assets/image/exit.svg',
                      color: Colors.white,
                      height: 20,
                      width: 20,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
