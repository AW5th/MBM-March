import 'package:flutter/material.dart';
import 'package:MusicByMasses/helpers/svg/svg.dart';

/* The Next Button colors  */
class GeneratedGroup4Widget8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 308.0,
      height: 52.0,
      child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          overflow: Overflow.visible,
          children: [
            Positioned(
              left: 0.0,
              top: 0.0,
              right: null,
              bottom: null,
              width: 308.0,
              height: 52.0,
              child: Container(
                width: 308.0,
                height: 52.0,
                child: SvgWidget(painters: [
                  SvgPathPainter.fill()
                    ..addPath(
                        'M0 20C0 8.9543 8.95431 0 20 0L288 0C299.046 0 308 8.95431 308 20L308 32C308 43.0457 299.046 52 288 52L20 52C8.95431 52 0 43.0457 0 32L0 20Z')
                    ..color = Color.fromARGB(255, 255, 255, 255),
                  SvgPathPainter.stroke(
                    3.0,
                    strokeJoin: StrokeJoin.miter,
                  )
                    ..addPath(
                        'M20 3L288 3L288 -3L20 -3L20 3ZM305 20L305 32L311 32L311 20L305 20ZM288 49L20 49L20 55L288 55L288 49ZM3 32L3 20L-3 20L-3 32L3 32ZM20 49C10.6112 49 3 41.3888 3 32L-3 32C-3 44.7025 7.29746 55 20 55L20 49ZM305 32C305 41.3888 297.389 49 288 49L288 55C300.703 55 311 44.7025 311 32L305 32ZM288 3C297.389 3 305 10.6112 305 20L311 20C311 7.29745 300.703 -3 288 -3L288 3ZM20 -3C7.29745 -3 -3 7.29745 -3 20L3 20C3 10.6112 10.6112 3 20 3L20 -3Z')
                    ..addClipPath(
                        'M0 20C0 8.9543 8.95431 0 20 0L288 0C299.046 0 308 8.95431 308 20L308 32C308 43.0457 299.046 52 288 52L20 52C8.95431 52 0 43.0457 0 32L0 20Z')
                    ..setLinearGradient(
                      startX: -10.000000370791977,
                      startY: 25.999981860616856,
                      endX: 319.50000575068253,
                      endY: 25.999980647753958,
                      colors: [
                        Color.fromARGB(255, 255, 213, 106),
                        Color.fromARGB(255, 255, 122, 0)
                      ],
                      colorStops: [0.0, 1.0],
                    ),
                ]),
              ),
            )
          ]),
    );
  }
}
