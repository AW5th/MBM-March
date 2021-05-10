import 'package:flutter/material.dart';
import 'package:MusicByMasses/helpers/transform/transform.dart';
import 'package:MusicByMasses/fig2flutterapp/generateddashboardzachwidget4/generated/GeneratedArrowWidget10.dart';
import 'package:MusicByMasses/fig2flutterapp/generateddashboardzachwidget4/generated/GeneratedVectorWidget20.dart';

/* Group Group 1524
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedGroup1524Widget10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 25.0,
      height: 37.5,
      child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          overflow: Overflow.visible,
          children: [
            Positioned(
              left: 0.0,
              top: 0.0,
              right: 0.0,
              bottom: 0.0,
              width: null,
              height: null,
              child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                double percentWidth = 1.0;
                double scaleX = (constraints.maxWidth * percentWidth) / 25.0;

                double percentHeight = 0.6;
                double scaleY = (constraints.maxHeight * percentHeight) / 22.5;

                return Stack(children: [
                  TransformHelper.translateAndScale(
                      translateX: constraints.maxWidth * -9.094947017729283e-15,
                      translateY: constraints.maxHeight * 0.3999997202555339,
                      translateZ: 0,
                      scaleX: scaleX,
                      scaleY: scaleY,
                      scaleZ: 1,
                      child: GeneratedArrowWidget10())
                ]);
              }),
            ),
            Positioned(
              left: 3.333282470703125,
              top: 0.0,
              right: null,
              bottom: null,
              width: 17.916667938232422,
              height: 25.0,
              child: GeneratedVectorWidget20(),
            )
          ]),
    );
  }
}
