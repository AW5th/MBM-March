import 'package:flutter/material.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedprofileeditandsettingswidget/generated/GeneratedMaskWidget19.dart';
import 'package:flutter_app_two/helpers/transform/transform.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedprofileeditandsettingswidget/generated/GeneratedMaskWidget18.dart';

/* Group profile-min-sang-choi copy
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedProfileminsangchoicopyWidget6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      height: 200.0,
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
                double scaleX = (constraints.maxWidth * percentWidth) / 200.0;

                double percentHeight = 1.0;
                double scaleY = (constraints.maxHeight * percentHeight) / 200.0;

                return Stack(children: [
                  TransformHelper.translateAndScale(
                      translateX: 0,
                      translateY: 0,
                      translateZ: 0,
                      scaleX: scaleX,
                      scaleY: scaleY,
                      scaleZ: 1,
                      child: GeneratedMaskWidget18())
                ]);
              }),
            ),
            Positioned(
              left: 0.0,
              top: 0.0,
              right: null,
              bottom: null,
              width: 200.0,
              height: 200.0,
              child: GeneratedMaskWidget19(),
            )
          ]),
    );
  }
}
