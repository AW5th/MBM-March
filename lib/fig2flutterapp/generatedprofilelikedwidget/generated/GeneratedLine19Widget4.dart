import 'package:flutter/material.dart';
import 'package:flutter_app_two/helpers/transform/transform.dart';
import 'package:flutter_app_two/helpers/svg/svg.dart';

/* Line Line 19
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedLine19Widget4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TransformHelper.rotate(
        a: -1.00,
        b: -0.00,
        c: 0.00,
        d: -1.00,
        child: Container(
          width: 54.0,
          height: 1.0,
          child: SvgWidget(painters: [
            SvgPathPainter.stroke(
              1.0,
              strokeJoin: StrokeJoin.miter,
            )
              ..addPath('M0 0L54 0L54 -1L0 -1L0 0Z')
              ..setLinearGradient(
                startX: 57.042251084631786,
                startY: 4.547473508864641e-13,
                endX: -3.4225360741929003,
                endY: 0.0,
                colors: [
                  Color.fromARGB(255, 255, 227, 86),
                  Color.fromARGB(255, 255, 170, 44)
                ],
                colorStops: [0.0, 1.0],
              ),
          ]),
        ));
  }
}
