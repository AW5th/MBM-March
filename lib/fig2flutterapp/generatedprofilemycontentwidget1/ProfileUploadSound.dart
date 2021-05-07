import 'package:flutter/material.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedprofilemycontentwidget1/generated/GeneratedUploadSoundWidget.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedprofilemycontentwidget1/generated/GeneratedHomeIndicatorWidget16.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedprofilemycontentwidget1/generated/GeneratedGroup7Widget3.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedprofilemycontentwidget1/generated/GeneratedGroup1483Widget1.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedprofilemycontentwidget1/generated/GeneratedGroup5Widget2.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedprofilemycontentwidget1/generated/GeneratedGroup6Widget3.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedprofilemycontentwidget2/generated/UploadContentButton.dart';
import 'package:flutter_app_two/helpers/transform/transform.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedprofilemycontentwidget1/generated/GeneratedGroup1523Widget.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedprofilemycontentwidget1/generated/GeneratedTitleWidget9.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedprofilemycontentwidget1/generated/GeneratedStatusBarWidget9.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedprofilemycontentwidget1/generated/GeneratedEditeditWidget2.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedprofilemycontentwidget1/generated/GeneratedIconDarkChevronWidget7.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedprofilemycontentwidget1/generated/GeneratedLine18Widget1.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedprofilemycontentwidget1/generated/GeneratedIcon1024x1024FullWidget16.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedprofilemycontentwidget1/generated/GeneratedGroup2Widget1.dart';

/* Upload prompt  */
class ProfileUploadSound extends StatelessWidget {
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
              //logo
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
                      constraints.maxWidth * 0.19466666666666665;

                  final double height =
                      constraints.maxHeight * 0.054187192118226604;

                  return Stack(children: [
                    TransformHelper.translate(
                        x: constraints.maxWidth * 0.4026666666666667,
                        y: constraints.maxHeight * 0.06280788177339902,
                        z: 0,
                        child: Container(
                          width: width,
                          height: height,
                          child: GeneratedIcon1024x1024FullWidget16(),
                        ))
                  ]);
                }),
              ),
              //edit button
              Positioned(
                left: 335.0,
                top: 61.0,
                right: null,
                bottom: null,
                width: 24.0,
                height: 24.0,
                child: GestureDetector(
                  onTap: () => Navigator.pushNamed(context, '/Profile'),
                  child: GeneratedEditeditWidget2(),
                ),
              ),
              //background stuff
              Positioned(
                left: 87.0,
                top: 116.0,
                right: null,
                bottom: null,
                width: 200.0,
                height: 200.0,
                child: GeneratedGroup2Widget1(),
              ),
              //back button
              Positioned(
                left: 12.0,
                top: 59.0,
                right: null,
                bottom: null,
                width: 11.9765625,
                height: 20.7890625,
                child: GestureDetector(
                  onTap: () => Navigator.pushNamed(context, '/Profile'),
                  child: GeneratedIconDarkChevronWidget7(),
                ),
              ),
              //Entire upload sound box
              Positioned(
                left: 3.0,
                top: 133.0,
                right: null,
                bottom: null,
                width: 375.0,
                height: 671.0,
                child: GeneratedGroup1523Widget(),
              ),
              //TExt
              Positioned(
                left: 34.0,
                top: 154.0,
                right: null,
                bottom: null,
                width: 226.0,
                height: 24.0,
                child: GeneratedUploadSoundWidget(),
              ),
              //Next - Upload Button
              Positioned(
                left: 36.0,
                top: 696.0,
                right: null,
                bottom: null,
                width: 308.0,
                height: 52.0,
                child: GeneratedGroup7Widget3(),
              )
            ]),
      ),
    ));
  }
}
