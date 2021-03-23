import 'package:flutter/material.dart';
import 'package:flutter_app_two/helpers/svg/svg.dart';

/* Color of create account button
  */
class GeneratedIntersectWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 308.0,
      height: 52.0,
      child: SvgWidget(painters: [
        SvgPathPainter.fill()
          ..addPath(
              'M0 20C0 8.9543 8.95431 0 20 0L288 0C299.046 0 308 8.95431 308 20L308 32C308 43.0457 299.046 52 288 52L20 52C8.95431 52 0 43.0457 0 32L0 20Z')
          ..setLinearGradient(
            startX: -7.000000321335717,
            startY: -189.50000486899572,
            endX: 328.9999846488398,
            endY: -192.00000552242707,
            colors: [
              Color.fromARGB(255, 255, 213, 106),
              Color.fromARGB(255, 255, 122, 0)
            ],
            colorStops: [0.0, 1.0],
          ),
      ]),
    );
  }
}
