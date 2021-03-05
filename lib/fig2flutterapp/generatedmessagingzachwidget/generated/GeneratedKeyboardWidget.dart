import 'package:flutter/material.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedmessagingzachwidget/generated/GeneratedBackgroundWidget12.dart';
import 'package:flutter_app_two/helpers/transform/transform.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedmessagingzachwidget/generated/GeneratedHomeIndicatorWidget12.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedmessagingzachwidget/generated/GeneratedKeysWidget.dart';

/* Instance Keyboard
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedKeyboardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375.0,
      height: 291.0,
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
                        child: GeneratedBackgroundWidget12(),
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
                final double width = constraints.maxWidth;

                final double height =
                    constraints.maxHeight * 0.11683848797250859;

                return Stack(children: [
                  TransformHelper.translate(
                      x: 0,
                      y: constraints.maxHeight * 0.8831615120274914,
                      z: 0,
                      child: Container(
                        width: width,
                        height: height,
                        child: GeneratedHomeIndicatorWidget12(),
                      ))
                ]);
              }),
            ),
            Positioned(
              left: null,
              top: 8.0,
              right: null,
              bottom: null,
              width: 369.0,
              height: 259.0,
              child: GeneratedKeysWidget(),
            )
          ]),
    );
  }
}
