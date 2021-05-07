import 'package:flutter/material.dart';
import 'package:flutter_app_two/fig2flutterapp/Feed_Dashboard/generated/Generated1erinsteedWidget.dart';
import 'package:flutter_app_two/fig2flutterapp/Feed_Dashboard/generated/Generated2erinsteedWidget.dart';
import 'package:flutter_app_two/fig2flutterapp/Feed_Dashboard/generated/Generated5erinsteedWidget.dart';
import 'package:flutter_app_two/fig2flutterapp/Feed_Dashboard/generated/GeneratedIntersectWidget26.dart';
import 'package:flutter_app_two/fig2flutterapp/Feed_Dashboard/generated/GeneratedGroup1533Widget.dart';
import 'package:flutter_app_two/fig2flutterapp/Feed_Dashboard/generated/GeneratedTopArtistsTodayWidget.dart';
import 'package:flutter_app_two/fig2flutterapp/Feed_Dashboard/generated/Generated3erinsteedWidget.dart';

/* Competitions box */
class GeneratedGroup1532Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 332.0,
      height: 140.0,
      child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          overflow: Overflow.visible,
          children: [
            //box background
            Positioned(
              left: 0.0,
              top: 0.0,
              right: null,
              bottom: null,
              width: 332.0,
              height: 140.0,
              child: GeneratedIntersectWidget26(),
            ),
            Positioned(
              left: 55.0,
              top: 7.0,
              right: null,
              bottom: null,
              width: 223.0,
              height: 30.0,
              child: GeneratedTopArtistsTodayWidget(),
            ),
            Positioned(
              left: 31.0,
              top: 31.0,
              right: null,
              bottom: null,
              width: 81.0,
              height: 30.0,
              child: Generated1erinsteedWidget(),
            ),
            Positioned(
              left: 30.0,
              top: 65.0,
              right: null,
              bottom: null,
              width: 83.0,
              height: 30.0,
              child: Generated2erinsteedWidget(),
            ),
            Positioned(
              left: 30.0,
              top: 99.0,
              right: null,
              bottom: null,
              width: 83.0,
              height: 30.0,
              child: Generated3erinsteedWidget(),
            ),
            Positioned(
              left: 131.0,
              top: 65.0,
              right: null,
              bottom: null,
              width: 83.0,
              height: 30.0,
              child: Generated5erinsteedWidget(),
            ),
            Positioned(
              left: 130.0,
              top: 31.0,
              right: null,
              bottom: null,
              width: 183.0,
              height: 96.0,
              child: GeneratedGroup1533Widget(),
            )
          ]),
    );
  }
}
