import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/components/color.dart';

class Products extends StatefulWidget {
  final Size size;
  const Products(this.size, {super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: widget.size.height,
        width: widget.size.width,
        color: kDefaultcolor,
        child: Padding(
          padding: EdgeInsets.fromLTRB(
              widget.size.width * 0.2, 0, widget.size.width * 0.2, 0),
          child: Text(
            'Projects',
            maxLines: 1,
            style: TextStyle(
              fontFamily: 'SpaceMono',
              color: colorFonts,
              fontWeight: FontWeight.w400,
              fontSize: 60,
            ),
          ),
        ));
  }
}
