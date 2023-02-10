import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DisplayParallax extends StatelessWidget {
  final double _currentscrollOffset;
  final double _maxScrollOffse;
  const DisplayParallax(this._currentscrollOffset, this._maxScrollOffse,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
