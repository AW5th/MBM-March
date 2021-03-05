import 'package:flutter/material.dart';
import 'package:flutter_app_two/fig2flutterapp/generateddashboardzachwidget3/generated/GeneratedStatusBarWidget5.dart';
import 'package:flutter_app_two/fig2flutterapp/generateddashboardzachwidget3/generated/GeneratedGroup1525Widget.dart';
import 'package:flutter_app_two/fig2flutterapp/generateddashboardzachwidget3/generated/GeneratedGroup1524Widget2.dart';
import 'package:flutter_app_two/fig2flutterapp/generateddashboardzachwidget3/generated/GeneratedIconDarkChevronWidget3.dart';
import 'package:flutter_app_two/fig2flutterapp/generateddashboardzachwidget3/generated/GeneratedDirectionWidget4.dart';
import 'package:flutter_app_two/fig2flutterapp/generateddashboardzachwidget3/generated/GeneratedGroup1498Widget3.dart';
import 'package:flutter_app_two/fig2flutterapp/generateddashboardzachwidget3/generated/GeneratedGroup1544Widget.dart';
import 'package:flutter_app_two/fig2flutterapp/generateddashboardzachwidget3/generated/GeneratedHomeIndicatorWidget8.dart';
import 'package:flutter_app_two/fig2flutterapp/generateddashboardzachwidget3/generated/GeneratedGroup1486Widget2.dart';
import 'package:flutter_app_two/fig2flutterapp/generateddashboardzachwidget3/generated/GeneratedIntersectWidget39.dart';
import 'package:flutter_app_two/fig2flutterapp/generateddashboardzachwidget3/generated/GeneratedIcon1024x1024FullWidget14.dart';
import 'package:flutter_app_two/fig2flutterapp/generateddashboardzachwidget3/generated/GeneratedMusicByMassesRoundedFullWhiteVersion1Widget.dart';
import 'package:flutter_app_two/helpers/transform/transform.dart';

/* Frame Dashboard- Zach
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedDashboardZachWidget3 extends StatelessWidget {
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
                child: GeneratedStatusBarWidget5(),
              ),
              Positioned(
                left: 0.0,
                top: null,
                right: 0.0,
                bottom: 0.0,
                width: null,
                height: 34.0,
                child: GeneratedHomeIndicatorWidget8(),
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
                          child: GeneratedIcon1024x1024FullWidget14(),
                        ))
                  ]);
                }),
              ),
              Positioned(
                left: 12.0,
                top: 59.0,
                right: null,
                bottom: null,
                width: 11.9765625,
                height: 20.7890625,
                child: GeneratedIconDarkChevronWidget3(),
              ),
              Positioned(
                left: 355.2069091796875,
                top: 61.0,
                right: null,
                bottom: null,
                width: 26.20689582824707,
                height: 24.27597999572754,
                child: GeneratedDirectionWidget4(),
              ),
              Positioned(
                left: 19.0,
                top: 136.0,
                right: null,
                bottom: null,
                width: 336.0,
                height: 540.0,
                child: GeneratedIntersectWidget39(),
              ),
              Positioned(
                left: 37.0,
                top: 611.0,
                right: null,
                bottom: null,
                width: 164.0,
                height: 50.0,
                child: GeneratedGroup1544Widget(),
              ),
              Positioned(
                left: 274.0,
                top: 708.0,
                right: null,
                bottom: null,
                width: 69.0,
                height: 64.0,
                child: GeneratedGroup1498Widget3(),
              ),
              Positioned(
                left: 37.0,
                top: null,
                right: null,
                bottom: null,
                width: 62.0,
                height: 62.0,
                child: TransformHelper.translate(
                    x: 0.00,
                    y: 333.00,
                    z: 0,
                    child: GeneratedGroup1486Widget2()),
              ),
              Positioned(
                left: 55.0,
                top: 719.0,
                right: null,
                bottom: null,
                width: 25.0,
                height: 37.5,
                child: GeneratedGroup1524Widget2(),
              ),
              Positioned(
                left: 149.0,
                top: null,
                right: null,
                bottom: null,
                width: 75.0,
                height: 75.0,
                child: TransformHelper.translate(
                    x: 0.00,
                    y: 334.50,
                    z: 0,
                    child: GeneratedGroup1525Widget()),
              ),
              Positioned(
                left: 162.0,
                top: 723.0,
                right: null,
                bottom: null,
                width: 50.0,
                height: 30.624717712402344,
                child: GeneratedMusicByMassesRoundedFullWhiteVersion1Widget(),
              )
            ]),
      ),
    ));
  }
}
