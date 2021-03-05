import 'package:flutter/material.dart';
import 'package:flutter_app_two/helpers/transform/transform.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedprofileotherusercontentwidget/generated/GeneratedVector436Widget6.dart';

/* Frame direction
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedDirectionWidget6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TransformHelper.rotate(
        a: -1.00,
        b: 0.00,
        c: 0.00,
        d: 1.00,
        child: GestureDetector(
          onTap: () =>
              Navigator.pushNamed(context, '/GeneratedMessagingZachWidget'),
          child: Container(
            width: 26.20689582824707,
            height: 24.27597999572754,
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
                      double percentWidth = 0.9333333624454975;
                      double scaleX = (constraints.maxWidth * percentWidth) /
                          24.45977020263672;

                      double percentHeight = 0.933333254763956;
                      double scaleY = (constraints.maxHeight * percentHeight) /
                          22.65757942199707;

                      return Stack(children: [
                        TransformHelper.translateAndScale(
                            translateX:
                                constraints.maxWidth * 0.033333282387046075,
                            translateY:
                                constraints.maxHeight * 0.03333333333333333,
                            translateZ: 0,
                            scaleX: scaleX,
                            scaleY: scaleY,
                            scaleZ: 1,
                            child: GeneratedVector436Widget6())
                      ]);
                    }),
                  )
                ]),
          ),
        ));
  }
}
