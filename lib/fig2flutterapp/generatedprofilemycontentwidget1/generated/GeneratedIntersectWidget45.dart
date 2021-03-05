import 'package:flutter/material.dart';
import 'package:flutter_app_two/helpers/svg/svg.dart';

/* BooleanOperation Intersect
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedIntersectWidget45 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 296.0,
      height: 74.0,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(63, 0, 0, 0),
            offset: Offset(2.0, 2.0),
            blurRadius: 8.0,
          ),
          BoxShadow(
            color: Color.fromARGB(63, 0, 0, 0),
            offset: Offset(-2.0, -2.0),
            blurRadius: 8.0,
          )
        ],
      ),
      child: SvgWidget(painters: [
        SvgPathPainter.fill()
          ..addPath(
              'M0 20C0 8.95431 8.9543 0 20 0L276 0C287.046 0 296 8.9543 296 20L296 54C296 65.0457 287.046 74 276 74L20 74C8.95431 74 0 65.0457 0 54L0 20Z')
          ..color = Color.fromARGB(255, 255, 255, 255),
      ]),
    );
  }
}
