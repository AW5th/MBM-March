import 'package:flutter/material.dart';
import 'package:flutter_app_two/helpers/transform/transform.dart';
import 'package:flutter_app_two/fig2flutterapp/generateddashboardzachwidget/generated/GeneratedBasicheart_outlineWidget1.dart';

/* Instance basic / heart_outline
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedBasicheart_outlineWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.zero,
      child: Container(
        width: 44.85000228881836,
        height: 42.20289993286133,
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
                  double percentWidth = 0.8333334609151751;
                  double scaleX =
                      (constraints.maxWidth * percentWidth) / 37.37500762939453;

                  double percentHeight = 0.7499999322079063;
                  double scaleY = (constraints.maxHeight * percentHeight) /
                      31.652172088623047;

                  return Stack(children: [
                    TransformHelper.translateAndScale(
                        translateX: constraints.maxWidth * 0.08333368949930846,
                        translateY: constraints.maxHeight * 0.1250000112986823,
                        translateZ: 0,
                        scaleX: scaleX,
                        scaleY: scaleY,
                        scaleZ: 1,
                        child: GeneratedBasicheart_outlineWidget1())
                  ]);
                }),
              )
            ]),
      ),
    );
  }
}
