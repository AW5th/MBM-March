import 'package:flutter/material.dart';
import 'package:MusicByMasses/fig2flutterapp/Feed_Dashboard/generated/GeneratedEllipse1Widget.dart';
import 'package:MusicByMasses/helpers/transform/transform.dart';
import 'package:MusicByMasses/fig2flutterapp/Feed_Dashboard/generated/GeneratedProfileminsangchoicopyWidget.dart';
import 'package:MusicByMasses/helpers/svg/svg.dart';

/* Profile button
  */
class GeneratedGroup1Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.0,
      height: 50.0,
      child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          overflow: Overflow.visible,
          children: [
            //Profile picutre
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
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(63, 0, 0, 0),
                        offset: Offset(-2.0, -2.0),
                        blurRadius: 30.0,
                        spreadRadius: 0.001,
                      )
                    ],
                  ),
                        //Actual image
                        child: GeneratedProfileminsangchoicopyWidget(),
                      );
              }),
            )
          ]),
    );
  }
}
