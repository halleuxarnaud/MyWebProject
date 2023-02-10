import 'package:flutter/material.dart';

class ParallaxDemo extends StatefulWidget {
  @override
  _ParallaxDemoState createState() => _ParallaxDemoState();
}

class _ParallaxDemoState extends State<ParallaxDemo> {
  double _scrollPercent = 0.0;

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollUpdateNotification>(
      onNotification: (notification) {
        setState(() {
          _scrollPercent = (notification.scrollDelta! / 200);
        });
        return false;
      },
      child: SingleChildScrollView(
        child: Container(
          height: 400,
          width: 400,
          child: Stack(
            children: <Widget>[
              Image.asset(
                'assets/image/logo.png',
                fit: BoxFit.fitWidth,
                height: 200,
              ),
              Positioned(
                top: 100 - _scrollPercent * 100,
                left: 10,
                child: Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width - 20,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: Offset(0, 10),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Image Title',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
