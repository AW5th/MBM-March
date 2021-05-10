import 'package:flutter/material.dart';
import 'package:MusicByMasses/helpers/transform/transform.dart';
import 'package:MusicByMasses/fig2flutterapp/generatedprofilemycontentwidget1/generated/GeneratedVectorWidget11.dart';
import 'package:MusicByMasses/fig2flutterapp/generatedprofilemycontentwidget1/generated/GeneratedVectorWidget10.dart';

/* Group Group
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedGroupWidget4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35.000003814697266,
      height: 47.5,
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
                double percentWidth = 0.4285713818608549;
                double scaleX = (constraints.maxWidth * percentWidth) / 15.0;

                double percentHeight = 0.631578907213713;
                double scaleY = (constraints.maxHeight * percentHeight) /
                    29.999998092651367;

                return Stack(children: [
                  TransformHelper.translateAndScale(
                      translateX: constraints.maxWidth * 0.2857136823693758,
                      translateY: 0,
                      translateZ: 0,
                      scaleX: scaleX,
                      scaleY: scaleY,
                      scaleZ: 1,
                      child: GeneratedVectorWidget10())
                ]);
              }),
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
                double percentWidth = 1.0;
                double scaleX =
                    (constraints.maxWidth * percentWidth) / 35.000003814697266;

                double percentHeight = 0.5263157493189762;
                double scaleY = (constraints.maxHeight * percentHeight) /
                    24.999998092651367;

                return Stack(children: [
                  TransformHelper.translateAndScale(
                      translateX: 0,
                      translateY: constraints.maxHeight * 0.47368421052631576,
                      translateZ: 0,
                      scaleX: scaleX,
                      scaleY: scaleY,
                      scaleZ: 1,
                      child: GeneratedVectorWidget11())
                ]);
              }),
            )
          ]),
    );
  }
}
