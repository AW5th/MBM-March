import 'package:flutter/material.dart';
import 'package:MusicByMasses/helpers/transform/transform.dart';
import 'package:MusicByMasses/fig2flutterapp/View_Song_Share/generated/GeneratedIconWidget1.dart';

/* Frame Icon / Light / chevron.left
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedIconLightchevronleftWidget1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
              child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                double percentWidth = 1.0;
                double scaleX =
                    (constraints.maxWidth * percentWidth) / 11.9765625;

                double percentHeight = 1.0;
                double scaleY =
                    (constraints.maxHeight * percentHeight) / 20.7890625;

                return Stack(children: [
                  TransformHelper.translateAndScale(
                      translateX: 0,
                      translateY: 0,
                      translateZ: 0,
                      scaleX: scaleX,
                      scaleY: scaleY,
                      scaleZ: 1,
                      child: GeneratedIconWidget1())
                ]);
              }),
            )
          ]),
    );
  }
}
