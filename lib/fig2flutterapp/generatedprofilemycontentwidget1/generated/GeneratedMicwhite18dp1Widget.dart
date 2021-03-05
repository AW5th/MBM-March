import 'package:flutter/material.dart';
import 'package:flutter_app_two/helpers/transform/transform.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedprofilemycontentwidget1/generated/GeneratedGroupWidget3.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedprofilemycontentwidget1/generated/GeneratedGroupWidget2.dart';

/* Frame mic-white-18dp 1
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedMicwhite18dp1Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.zero,
      child: Container(
        width: 60.0,
        height: 60.0,
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
                          child: GeneratedGroupWidget2(),
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
                child: LayoutBuilder(builder:
                    (BuildContext context, BoxConstraints constraints) {
                  final double width =
                      constraints.maxWidth * 0.5833333969116211;

                  final double height =
                      constraints.maxHeight * 0.7916666666666666;

                  return Stack(children: [
                    TransformHelper.translate(
                        x: constraints.maxWidth * 0.20833366711934406,
                        y: constraints.maxHeight * 0.08333329359690349,
                        z: 0,
                        child: Container(
                          width: width,
                          height: height,
                          child: GeneratedGroupWidget3(),
                        ))
                  ]);
                }),
              )
            ]),
      ),
    );
  }
}
