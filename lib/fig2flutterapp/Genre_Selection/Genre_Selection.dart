import 'package:flutter/material.dart';
import 'package:flutter_app_two/fig2flutterapp/Genre_Selection/generated/GeneratedGroup6Widget1.dart';
import 'package:flutter_app_two/fig2flutterapp/Genre_Selection/generated/GeneratedGroup16Widget.dart';
import 'package:flutter_app_two/fig2flutterapp/Genre_Selection/generated/GeneratedGroup17Widget.dart';
import 'package:flutter_app_two/fig2flutterapp/Genre_Selection/generated/GeneratedIcon1024x1024FullWidget6.dart';
import 'package:flutter_app_two/fig2flutterapp/Genre_Selection/generated/GeneratedGroup12Widget.dart';
import 'package:flutter_app_two/fig2flutterapp/Genre_Selection/generated/GeneratedGroup18Widget.dart';
import 'package:flutter_app_two/helpers/transform/transform.dart';
import 'package:flutter_app_two/fig2flutterapp/Genre_Selection/generated/GeneratedGroup19Widget.dart';
import 'package:flutter_app_two/fig2flutterapp/Genre_Selection/generated/GeneratedGroup15Widget.dart';
import 'package:flutter_app_two/fig2flutterapp/Genre_Selection/generated/GeneratedGroup13Widget.dart';
import 'package:flutter_app_two/fig2flutterapp/Genre_Selection/generated/GeneratedSkipWidget1.dart';
import 'package:flutter_app_two/fig2flutterapp/Genre_Selection/generated/GeneratedGroup20Widget.dart';
import 'package:flutter_app_two/fig2flutterapp/Genre_Selection/generated/GeneratedGroup11Widget.dart';
import 'package:flutter_app_two/fig2flutterapp/Genre_Selection/generated/FunkButton.dart';
import 'package:flutter_app_two/fig2flutterapp/Genre_Selection/generated/GeneratedGenreWidget.dart';
import 'package:flutter_app_two/fig2flutterapp/Genre_Selection/generated/GeneratedGroup21Widget.dart';
import 'package:flutter_app_two/fig2flutterapp/Genre_Selection/generated/GeneratedGroup14Widget.dart';

/* Genre_Selection page */
class Genre_Selection extends StatelessWidget {
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
              //Skip button
              Positioned(
                left: 287.0,
                top: 56.0,
                right: null,
                bottom: null,
                width: 86.0,
                height: 30.0,
                child: GeneratedSkipWidget1(),
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
                  final double width = constraints.maxWidth * 0.296;

                  final double height =
                      constraints.maxHeight * 0.09236453201970443;

                  return Stack(children: [
                    TransformHelper.translate(
                        x: constraints.maxWidth * 0.352,
                        y: constraints.maxHeight * 0.04433497536945813,
                        z: 0,
                        child: Container(
                          width: width,
                          height: height,
                          child: GeneratedIcon1024x1024FullWidget6(),
                        ))
                  ]);
                }),
              ),
              Positioned(
                left: 34.0,
                top: 213.0,
                right: null,
                bottom: null,
                width: 97.0,
                height: 27.0,
                child: GeneratedGenreWidget(),
              ),
              Positioned(
                left: 34.0,
                top: 263.0,
                right: null,
                bottom: null,
                width: 92.00162506103516,
                height: 31.399999618530273,
                child: GeneratedGroup11Widget(),
              ),
              Positioned(
                left: 34.0,
                top: 338.0,
                right: null,
                bottom: null,
                width: 92.0,
                height: 31.399444580078125,
                child: GeneratedGroup14Widget(),
              ),
              Positioned(
                left: 34.0,
                top: 414.0,
                right: null,
                bottom: null,
                width: 92.0,
                height: 31.399444580078125,
                child: GeneratedGroup17Widget(),
              ),
              Positioned(
                left: 34.0,
                top: 490.0,
                right: null,
                bottom: null,
                width: 92.0,
                height: 31.399444580078125,
                child: GeneratedGroup20Widget(),
              ),
              Positioned(
                left: 142.0,
                top: 262.0,
                right: null,
                bottom: null,
                width: 92.0,
                height: 33.447235107421875,
                child: GeneratedGroup12Widget(),
              ),
              Positioned(
                left: 142.0,
                top: 338.0,
                right: null,
                bottom: null,
                width: 92.0,
                height: 33.447235107421875,
                child: GeneratedGroup15Widget(),
              ),
              Positioned(
                left: 142.0,
                top: 414.0,
                right: null,
                bottom: null,
                width: 92.0,
                height: 33.447235107421875,
                child: GeneratedGroup18Widget(),
              ),
              Positioned(
                left: 34.0,
                top: 655.0,
                right: null,
                bottom: null,
                width: 308.0,
                height: 52.0,
                child: GeneratedGroup6Widget1(),
              ),
              Positioned(
                left: 142.0,
                top: 490.0,
                right: null,
                bottom: null,
                width: 92.0,
                height: 33.447235107421875,
                child: GeneratedGroup21Widget(),
              ),
              Positioned(
                left: 250.0,
                top: 262.0,
                right: null,
                bottom: null,
                width: 92.0,
                height: 31.399444580078125,
                child: GeneratedGroup13Widget(),
              ),
              Positioned(
                left: 250.0,
                top: 338.0,
                right: null,
                bottom: null,
                width: 92.0,
                height: 31.399444580078125,
                child: GeneratedGroup16Widget(),
              ),
              Positioned(
                left: 250.0,
                top: 414.0,
                right: null,
                bottom: null,
                width: 92.0,
                height: 31.399444580078125,
                child: GeneratedGroup19Widget(),
              ),
              Positioned(
                left: 250.0,
                top: 490.0,
                right: null,
                bottom: null,
                width: 92.0,
                height: 31.399444580078125,
                child: GeneratedGroup22Widget(),
              )
            ]),
      ),
    ));
  }
}
