import 'package:flutter/material.dart';
import 'package:MusicByMasses/helpers/transform/transform.dart';
import 'package:MusicByMasses/helpers/svg/svg.dart';

/* Line Line 19
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedLine19Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TransformHelper.rotate(
        a: -1.00,
        b: -0.00,
        c: 0.00,
        d: -1.00,
        child: Container(
          width: 93.0,
          height: 1.0,
          child: SvgWidget(painters: [
            SvgPathPainter.stroke(
              1.0,
              strokeJoin: StrokeJoin.miter,
            )
              ..addPath('M0 0L93 0L93 -1L0 -1L0 0Z')
              ..setLinearGradient(
                startX: 98.23943242353252,
                startY: 4.547473508864641e-13,
                endX: -5.894367683332217,
                endY: 0.0,
                colors: [
                  Color.fromARGB(255, 255, 207, 86),
                  Color.fromARGB(255, 255, 153, 0)
                ],
                colorStops: [0.0, 1.0],
              ),
          ]),
        ));
  }
}
