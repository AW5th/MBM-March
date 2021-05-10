import 'package:flutter/material.dart';
import 'package:MusicByMasses/fig2flutterapp/Artist_Type/generated/GeneratedTimeWidget.dart';
import 'package:MusicByMasses/helpers/transform/transform.dart';

/* Instance Time Style
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedTimeStyleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 54.0,
      height: 21.0,
      child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          overflow: Overflow.visible,
          children: [
            Positioned(
              left: 0.0,
              top: null,
              right: null,
              bottom: null,
              width: 59.0,
              height: 23.0,
              child: TransformHelper.translate(
                  x: 0.00, y: 8.00, z: 0, child: GeneratedTimeWidget()),
            )
          ]),
    );
  }
}
