import 'package:flutter/material.dart';
import 'package:mouse_parallax/mouse_parallax.dart';

class ParallaxEffectWidget extends StatefulWidget {
  final Size maxSize;
  final String picture1;
  final String picture2;
  final String srcimage13;

  const ParallaxEffectWidget(
      this.maxSize, this.picture1, this.picture2, this.srcimage13,
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
          offset: const Offset(175, 0),
          child: OverflowBox(
            child: Container(
              height: widget.maxSize.height / 2.5,
              width: widget.maxSize.width / 4,
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
          offset: const Offset(100, 30),
          child: OverflowBox(
            child: Container(
              height: widget.maxSize.height / 2.5,
              width: widget.maxSize.width / 4,
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
          offset: const Offset(25, 60),
          child: OverflowBox(
            child: Container(
              height: widget.maxSize.height / 2.5,
              width: widget.maxSize.width / 4,
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
