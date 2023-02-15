import 'package:flutter/material.dart';
import 'package:mouse_parallax/mouse_parallax.dart';

class ParallaxEffectWidget extends StatefulWidget {
  final Size size;
  final String srcimage11;
  final String srcimage12;
  final String srcimage13;

  const ParallaxEffectWidget(
      this.srcimage11, this.srcimage12, this.srcimage13, this.size,
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
              height: widget.size.height / 2.5,
              width: widget.size.width / 4,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage(widget.srcimage11),
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
              height: widget.size.height / 2.5,
              width: widget.size.width / 4,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage(widget.srcimage12),
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
              height: widget.size.height / 2.5,
              width: widget.size.width / 4,
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
