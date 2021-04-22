import 'package:flutter/material.dart';
import 'package:flutter_app_two/helpers/transform/transform.dart';
import 'package:flutter_app_two/fig2flutterapp/View_Song_Share/generated/GeneratedAvatarWidget14.dart';
import 'package:flutter_app_two/fig2flutterapp/View_Song_Share/generated/GeneratedTitleWidget1.dart';

/* Group Group 1543
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedGroup1543Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 164.0,
      height: 50.0,
      child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          overflow: Overflow.visible,
          children: [
            Positioned(
              left: 50.0,
              top: null,
              right: -2.0,
              bottom: 10.0,
              width: null,
              height: 29.0,
              child: GeneratedTitleWidget1(),
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
                final double width = constraints.maxWidth * 0.3048780487804878;

                final double height = constraints.maxHeight;

                return Stack(children: [
                  TransformHelper.translate(
                      x: 0,
                      y: 0,
                      z: 0,
                      child: Container(
                        width: width,
                        height: height,
                        child: GeneratedAvatarWidget14(),
                      ))
                ]);
              }),
            )
          ]),
    );
  }
}