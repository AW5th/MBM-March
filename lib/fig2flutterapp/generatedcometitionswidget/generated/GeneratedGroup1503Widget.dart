import 'package:flutter/material.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedcometitionswidget/generated/GeneratedGroup1501Widget1.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedcometitionswidget/generated/GeneratedGroup3Widget3.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedcometitionswidget/generated/GeneratedAvatarWidget7.dart';
import 'package:flutter_app_two/helpers/transform/transform.dart';

/* Group Group 1503
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedGroup1503Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 293.0,
      height: 151.0,
      child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          overflow: Overflow.visible,
          children: [
            Positioned(
              left: 0.0,
              top: 0.0,
              right: null,
              bottom: null,
              width: 293.0,
              height: 151.0,
              child: GeneratedGroup1501Widget1(),
            ),
            Positioned(
              left: 86.81481170654297,
              top: 0.0,
              right: null,
              bottom: null,
              width: 206.1851806640625,
              height: 151.0,
              child: GeneratedGroup3Widget3(),
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
                final double width = constraints.maxWidth * 0.10238907849829351;

                final double height =
                    constraints.maxHeight * 0.1986754966887417;

                return Stack(children: [
                  TransformHelper.translate(
                      x: constraints.maxWidth * 0.3174061433447099,
                      y: constraints.maxHeight * 0.7748344370860927,
                      z: 0,
                      child: Container(
                        width: width,
                        height: height,
                        child: GeneratedAvatarWidget7(),
                      ))
                ]);
              }),
            )
          ]),
    );
  }
}
