import 'package:flutter/material.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedprofilemycontentwidget1/generated/GeneratedProfileminsangchoiWidget2.dart';
import 'package:flutter_app_two/helpers/mask/mask.dart';
import 'package:flutter_app_two/helpers/transform/transform.dart';

/* Ellipse Mask
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedMaskWidget11 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Mask.fromSVGPath(
      'M200 100C200 155.228 155.228 200 100 200C44.7715 200 0 155.228 0 100C0 44.7715 44.7715 0 100 0C155.228 0 200 44.7715 200 100Z',
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
                final double width = constraints.maxWidth * 1.22;

                final double height = constraints.maxHeight * 1.22;

                return Stack(children: [
                  TransformHelper.translate(
                      x: constraints.maxWidth * -0.12,
                      y: constraints.maxHeight * -0.12,
                      z: 0,
                      child: Container(
                        width: width,
                        height: height,
                        child: GeneratedProfileminsangchoiWidget2(),
                      ))
                ]);
              }),
            )
          ]),
      offset: Offset(0.0, 0.0),
    );
  }
}
