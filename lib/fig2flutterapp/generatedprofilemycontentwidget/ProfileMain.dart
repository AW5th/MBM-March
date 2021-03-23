import 'package:flutter/material.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedprofilemycontentwidget/generated/GeneratedLabelTitleWidget2.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedprofilemycontentwidget2/generated/UploadContentButton.dart';
import 'package:flutter_app_two/helpers/transform/transform.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedprofilemycontentwidget/generated/UserInfo.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedprofilemycontentwidget/generated/GeneratedGroup5Widget1.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedprofilemycontentwidget/generated/EditButtonOnProfileMain.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedprofilemycontentwidget/generated/BackButtonOnProfileMain.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedprofilemycontentwidget/generated/GeneratedStatusBarWidget8.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedprofilemycontentwidget/generated/MusicIcon.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedprofilemycontentwidget/generated/GroupContainingContentOnProfileMain.dart';

import 'generated/UserInfo.dart';

/* Frame Profile- My content
    Autogenerated by FlutLab FTF Generator
  */
class ProfileMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: ClipRRect(
      borderRadius: BorderRadius.zero,
      child: Container(
        width: 375.0,
        height: 812.0,
        child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,
            overflow: Overflow.visible,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.zero,
                child: Container(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              Positioned(
                left: 0.0,
                top: 0.0,
                right: 0.0,
                bottom: null,
                width: null,
                height: 44.0,
                child: GeneratedStatusBarWidget8(),
              ),
              Positioned(
                left: 335.0,
                top: 61.0,
                right: null,
                bottom: null,
                width: 24.0,
                height: 24.0,
                child: EditButtonOnProfileMain(),
              ),
              Positioned(
                left: 12.0,
                top: 59.0,
                right: null,
                bottom: null,
                width: 11.9765625,
                height: 20.7890625,
                child: BackButtonOnProfileMain(),
              ),
              Positioned(
                left: 33.0,
                top: 704.0,
                right: null,
                bottom: null,
                width: 308.0,
                height: 52.0,
                child: UploadContentButton(),
              ),
              Positioned(
                left: 1.0,
                top: 395.0,
                right: null,
                bottom: null,
                width: 375.0,
                height: 278.0,
                child: GroupContainingContentOnProfileMain(),
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
                  final double width = constraints.maxWidth * 0.064;

                  final double height =
                      constraints.maxHeight * 0.029556650246305417;

                  return Stack(children: [
                    TransformHelper.translate(
                        x: constraints.maxWidth * 0.8373333333333334,
                        y: constraints.maxHeight * 0.31157635467980294,
                        z: 0,
                        child: Container(
                          width: width,
                          height: height,
                          child: MusicIcon(),
                        ))
                  ]);
                }),
              ),
              Positioned(
                left: 51.0,
                top: 59.0,
                right: null,
                bottom: null,
                width: 277.0,
                height: 334.0,
                child: UserInfo(),
              ),
              Positioned(
                left: 57.0,
                top: null,
                right: null,
                bottom: null,
                width: 36.0,
                height: 27.0,
                child: TransformHelper.translate(
                    x: 0.00,
                    y: -91.50,
                    z: 0,
                    child: GeneratedLabelTitleWidget2()),
              )
            ]),
      ),
    ));
  }
}
