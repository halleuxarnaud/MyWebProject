import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MinimumWebResp extends StatefulWidget {
  const MinimumWebResp({super.key});

  @override
  State<MinimumWebResp> createState() => _MinimumWebRespState();
}

class _MinimumWebRespState extends State<MinimumWebResp> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 40,
          width: 50,
          color: Colors.blue,
        ),
        Center(child: Text('MinimumWeb Responsive'))
      ],
    );
  }
}
