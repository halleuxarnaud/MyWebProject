import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();
  double _opacity = 0;
  double _scrollPostition = 0;

  _scrollListener() {
    setState(() {
      _scrollPostition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: _buildbody(size),
    );
  }

  SingleChildScrollView _buildbody(Size size) {
    return SingleChildScrollView(
      child: Column(children: <Widget>[
        Stack(
          children: [
            Container(
              height: 1080,
              width: 1920,
              color: Colors.blue,
            ),
            Image.asset('assets/image/logowithoutback.png')
          ],
        ),
        Container(
          height: 1080,
          width: 1920,
          color: Colors.red,
        ),
      ]),
    );
  }
}
