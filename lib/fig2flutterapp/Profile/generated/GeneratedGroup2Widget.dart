import 'package:flutter/material.dart';
import 'package:MusicByMasses/fig2flutterapp/Profile/generated/GeneratedProfileminsangchoicopyWidget1.dart';
import 'package:MusicByMasses/fig2flutterapp/Profile/generated/GeneratedEllipse1Widget1.dart';
import 'package:MusicByMasses/helpers/transform/transform.dart';

/* Profile picture
  */
class GeneratedGroup2Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          overflow: Overflow.visible,
          children: [
            //shadow
            Positioned(
              left: 0.0,
              top: null,
              right: null,
              bottom: null,
              width: 100.0,
              height: 100.0,
              child: GeneratedEllipse1Widget1(),
            ),
            Positioned(
              left: 0.0,
              top: 0.0,
              right: 0.0,
              bottom: 0.0,
              width: null,
              height: null,
              child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                final double width = constraints.maxWidth;

                final double height = constraints.maxHeight;

                return Container(
                        width: width,
                        height: height,
                        child: GeneratedProfileminsangchoicopyWidget1(),
                      );
              }),
            )
          ]),
    );
  }
}
