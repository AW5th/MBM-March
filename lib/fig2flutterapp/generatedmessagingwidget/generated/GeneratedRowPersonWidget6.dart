import 'package:flutter/material.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedmessagingwidget/generated/GeneratedTimeStampWidget6.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedmessagingwidget/generated/GeneratedUnreadIndicatorWidget6.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedmessagingwidget/generated/GeneratedNameWidget6.dart';
import 'package:flutter_app_two/helpers/transform/transform.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedmessagingwidget/generated/GeneratedChevronWidget6.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedmessagingwidget/generated/GeneratedBackgroundWidget6.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedmessagingwidget/generated/GeneratedAvatarWidget27.dart';

/* Frame Row - Person
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedRowPersonWidget6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375.0,
      height: 76.0,
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
              child: GeneratedBackgroundWidget6(),
            ),
            Positioned(
              left: null,
              top: 28.0,
              right: 13.0,
              bottom: null,
              width: 15.0,
              height: 25.0,
              child: GeneratedChevronWidget6(),
            ),
            Positioned(
              left: null,
              top: 27.0,
              right: 39.0,
              bottom: null,
              width: 56.0,
              height: 22.0,
              child: GeneratedTimeStampWidget6(),
            ),
            Positioned(
              left: 84.0,
              top: 27.0,
              right: null,
              bottom: null,
              width: 71.0,
              height: 24.0,
              child: GeneratedNameWidget6(),
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
                final double width = constraints.maxWidth * 0.12;

                final double height =
                    constraints.maxHeight * 0.5921052631578947;

                return Stack(children: [
                  TransformHelper.translate(
                      x: constraints.maxWidth * 0.06933333333333333,
                      y: constraints.maxHeight * 0.19736842105263158,
                      z: 0,
                      child: Container(
                        width: width,
                        height: height,
                        child: GeneratedAvatarWidget27(),
                      ))
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
                final double width =
                    constraints.maxWidth * 0.029333333333333333;

                final double height =
                    constraints.maxHeight * 0.14473684210526316;

                return Stack(children: [
                  TransformHelper.translate(
                      x: constraints.maxWidth * 0.024,
                      y: constraints.maxHeight * 0.4342105263157895,
                      z: 0,
                      child: Container(
                        width: width,
                        height: height,
                        child: GeneratedUnreadIndicatorWidget6(),
                      ))
                ]);
              }),
            )
          ]),
    );
  }
}
