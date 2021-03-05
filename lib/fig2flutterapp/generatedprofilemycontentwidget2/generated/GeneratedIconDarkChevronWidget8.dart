import 'package:flutter/material.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedprofilemycontentwidget2/generated/GeneratedIconLightchevronleftWidget8.dart';
import 'package:flutter_app_two/helpers/transform/transform.dart';

/* Frame Icon / Dark / Chevron
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedIconDarkChevronWidget8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.800000011920929,
      child: Container(
        width: 11.9765625,
        height: 20.7890625,
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
                  final double width = constraints.maxWidth;

                  final double height = constraints.maxHeight;

                  return Stack(children: [
                    TransformHelper.translate(
                        x: 0,
                        y: 0,
                        z: 0,
                        child: Container(
                          width: width,
                          height: height,
                          child: GeneratedIconLightchevronleftWidget8(),
                        ))
                  ]);
                }),
              )
            ]),
      ),
    );
  }
}
