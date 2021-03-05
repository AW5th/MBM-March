import 'package:flutter/material.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedmessagingzachwidget/generated/GeneratedBackgroundWidget14.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedmessagingzachwidget/generated/GeneratedAppStoreWidget.dart';
import 'package:flutter_app_two/helpers/transform/transform.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedmessagingzachwidget/generated/GeneratedCameraWidget.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedmessagingzachwidget/generated/GeneratedTechMessagingxLightMessageBarInputWidget.dart';

/* Instance Message Bar
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedMessageBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375.0,
      height: 45.0,
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
              child: GeneratedBackgroundWidget14(),
            ),
            Positioned(
              left: 124.0,
              top: null,
              right: 17.0,
              bottom: null,
              width: null,
              height: 33.0,
              child: GeneratedTechMessagingxLightMessageBarInputWidget(),
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
                double percentWidth = 0.08355546569824218;
                double scaleX =
                    (constraints.maxWidth * percentWidth) / 31.33329963684082;

                double percentHeight = 0.5629622141520182;
                double scaleY =
                    (constraints.maxHeight * percentHeight) / 25.33329963684082;

                return Stack(children: [
                  TransformHelper.translateAndScale(
                      translateX: constraints.maxWidth * 0.18650211588541668,
                      translateY: constraints.maxHeight * 0.2222222222222222,
                      translateZ: 0,
                      scaleX: scaleX,
                      scaleY: scaleY,
                      scaleZ: 1,
                      child: GeneratedAppStoreWidget())
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
                double percentWidth = 0.08222395833333333;
                double scaleX =
                    (constraints.maxWidth * percentWidth) / 30.833984375;

                double percentHeight = 0.5379991319444445;
                double scaleY =
                    (constraints.maxHeight * percentHeight) / 24.2099609375;

                return Stack(children: [
                  TransformHelper.translateAndScale(
                      translateX: constraints.maxWidth * 0.04533333333333334,
                      translateY: constraints.maxHeight * 0.22953559027777778,
                      translateZ: 0,
                      scaleX: scaleX,
                      scaleY: scaleY,
                      scaleZ: 1,
                      child: GeneratedCameraWidget())
                ]);
              }),
            )
          ]),
    );
  }
}
