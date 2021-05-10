import 'package:flutter/material.dart';
import 'package:MusicByMasses/helpers/svg/svg.dart';

/* profile pic
  */
class GeneratedEllipse1Widget1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(63, 0, 0, 0),
            offset: Offset(0.0, -2.0),
            blurRadius: 30.0,
          )
        ],
      ),
      child: SvgWidget(painters: [
        SvgPathPainter.fill()
          ..addPath(
              'M100 50C100 77.6142 77.6142 100 50 100C22.3858 100 0 77.6142 0 50C0 22.3858 22.3858 0 50 0C77.6142 0 100 22.3858 100 50Z')
          ..color = Color.fromARGB(255, 255, 255, 255),
      ]),
    );
  }
}
