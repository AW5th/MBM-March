import 'package:flutter/material.dart';
import 'package:flutter_app_two/fig2flutterapp/Profile/generated/GeneratedSongWidget1.dart';
import 'package:flutter_app_two/fig2flutterapp/Profile/generated/GeneratedLabelTitleWidget1.dart';
import 'package:flutter_app_two/fig2flutterapp/Profile/generated/GeneratedGroup1524Widget3.dart';
import 'package:flutter_app_two/fig2flutterapp/Profile/generated/GeneratedGroup1529Widget1.dart';
import 'package:flutter_app_two/fig2flutterapp/Profile/generated/GeneratedLabelTitleWidget.dart';
import 'package:flutter_app_two/fig2flutterapp/Profile/generated/GeneratedGroup2Widget.dart';
import 'package:flutter_app_two/helpers/transform/transform.dart';
import 'package:flutter_app_two/fig2flutterapp/Profile/generated/GeneratedJacobStevensWidget.dart';

/* user info
  */
class UserInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 277.0,
      height: 334.0,
      child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          overflow: Overflow.visible,
          children: [
            //Profile picture
            Positioned(
              left: 94.0,
              top: 0.0,
              right: null,
              bottom: null,
              width: 100.0,
              height: 100.0,
              child: GeneratedGroup2Widget(),
            ),
            Positioned(
              left: 43.0,
              top: 334.0,
              right: null,
              bottom: null,
              width: 62.0,
              height: 192.0,
              child: GeneratedGroup1529Widget1(),
            ),
            Positioned(
              left: 131.0,
              top: 192.0,
              right: null,
              bottom: null,
              width: 25.0,
              height: 37.5,
              child: GeneratedGroup1524Widget3(),
            ),
            //username
            Positioned(
              left: 25.0,
              top: 126.0,
              right: null,
              bottom: null,
              width: 224.0,
              height: 24.0,
              child: GeneratedJacobStevensWidget(),
            ),
            //listens icon
            Positioned(
              left: 0.0,
              top: 0.0,
              right: 0.0,
              bottom: 0.0,
              width: null,
              height: null,
              child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                final double width = constraints.maxWidth * 0.18050541516245489;

                final double height =
                    constraints.maxHeight * 0.1497005988023952;

                return Stack(children: [
                  TransformHelper.translate(
                      x: 0,
                      y: constraints.maxHeight * 0.5568862275449101,
                      z: 0,
                      child: Container(
                        width: width,
                        height: height,
                        child: GeneratedSongWidget1(),
                      ))
                ]);
              }),
            ),
            //uploads??
            Positioned(
              left: 127.0,
              top: null,
              right: null,
              bottom: null,
              width: 36.0,
              height: 20.0,
              child: TransformHelper.translate(
                  x: 0.00, y: 85.00, z: 0, child: GeneratedLabelTitleWidget()),
            ),
            //idk what this is
            Positioned(
              left: 241.0,
              top: null,
              right: null,
              bottom: null,
              width: 41.0,
              height: 20.0,
              child: TransformHelper.translate(
                  x: 0.00, y: 85.00, z: 0, child: GeneratedLabelTitleWidget1()),
            )
          ]),
    );
  }
}
