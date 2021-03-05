import 'package:flutter/material.dart';
import 'package:flutter_app_two/helpers/transform/transform.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedarrowshort_upwidget/generated/GeneratedArrowshort_upWidget1.dart';

/* Frame arrow / short_up
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedArrowshort_upWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: ClipRRect(
      borderRadius: BorderRadius.zero,
      child: Container(
        width: 65.0,
        height: 65.0,
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
                child: LayoutBuilder(builder:
                    (BuildContext context, BoxConstraints constraints) {
                  double percentWidth = 0.5;
                  double scaleX = (constraints.maxWidth * percentWidth) / 32.5;

                  double percentHeight = 0.6666665884164663;
                  double scaleY = (constraints.maxHeight * percentHeight) /
                      43.33332824707031;

                  return Stack(children: [
                    TransformHelper.translateAndScale(
                        translateX: constraints.maxWidth * 0.25,
                        translateY: constraints.maxHeight * 0.1666667204636794,
                        translateZ: 0,
                        scaleX: scaleX,
                        scaleY: scaleY,
                        scaleZ: 1,
                        child: GeneratedArrowshort_upWidget1())
                  ]);
                }),
              )
            ]),
      ),
    ));
  }
}
