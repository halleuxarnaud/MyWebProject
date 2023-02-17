import 'package:flutter/material.dart';
import 'package:mouse_parallax/mouse_parallax.dart';

class ParallaxEffectWidget extends StatefulWidget {
  final Size screenSize;
  final String picture1;
  final String picture2;
  final String srcimage13;

  const ParallaxEffectWidget(
      this.screenSize, this.picture1, this.picture2, this.srcimage13,
      {Key? key});

  @override
  State<ParallaxEffectWidget> createState() => _ParallaxEffectWidgetState();
}

class _ParallaxEffectWidgetState extends State<ParallaxEffectWidget> {
  @override
  Widget build(BuildContext context) {
    const offset = 30.0;
    return ParallaxStack(
      layers: [
        ParallaxLayer(
          xOffset: -offset,
          yOffset: -offset,
          offset: const Offset(300, -30),
          child: OverflowBox(
            child: Container(
              height: widget.screenSize.height / 2.5,
              width: widget.screenSize.width / 4,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage(widget.picture1),
                ),
              ),
            ),
          ),
        ),
        ParallaxLayer(
          xOffset: -offset,
          yOffset: -offset,
          offset: const Offset(200, -0),
          child: OverflowBox(
            child: Container(
              height: widget.screenSize.height / 2.5,
              width: widget.screenSize.width / 4,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage(widget.picture2),
                ),
              ),
            ),
          ),
        ),
        ParallaxLayer(
          xOffset: -offset,
          yOffset: -offset,
          offset: const Offset(100, 30),
          child: OverflowBox(
            child: Container(
              height: widget.screenSize.height / 2.5,
              width: widget.screenSize.width / 4,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage(widget.srcimage13),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
