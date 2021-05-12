import 'package:flutter/material.dart';
import 'package:MusicByMasses/helpers/transform/transform.dart';
import 'package:MusicByMasses/fig2flutterapp/OtherUserProfile/generated/GeneratedCellularConnectionWidget11.dart';
import 'package:MusicByMasses/fig2flutterapp/OtherUserProfile/generated/GeneratedBatteryWidget11.dart';
import 'package:MusicByMasses/fig2flutterapp/OtherUserProfile/generated/GeneratedTimeStyleWidget11.dart';
import 'package:MusicByMasses/fig2flutterapp/OtherUserProfile/generated/GeneratedWifiWidget11.dart';

/* Instance Status Bar
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedStatusBarWidget11 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 376.0,
      height: 44.0,
      child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          overflow: Overflow.visible,
          children: [
            Positioned(
              left: null,
              top: 17.33333396911621,
              right: 14.33864974975586,
              bottom: null,
              width: 24.32803726196289,
              height: 11.333333015441895,
              child: GeneratedBatteryWidget11(),
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
                double percentWidth = 0.04088876856134293;
                double scaleX =
                    (constraints.maxWidth * percentWidth) / 15.374176979064941;

                double percentHeight = 0.25;
                double scaleY = (constraints.maxHeight * percentHeight) / 11.0;

                return Stack(children: [
                  TransformHelper.translateAndScale(
                      translateX: constraints.maxWidth * 0.8426667071403341,
                      translateY: constraints.maxHeight * 0.3938789367675781,
                      translateZ: 0,
                      scaleX: scaleX,
                      scaleY: scaleY,
                      scaleZ: 1,
                      child: GeneratedWifiWidget11())
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
                double percentWidth = 0.045333294158286234;
                double scaleX =
                    (constraints.maxWidth * percentWidth) / 17.045318603515625;

                double percentHeight = 0.24242427132346414;
                double scaleY = (constraints.maxHeight * percentHeight) /
                    10.666667938232422;

                return Stack(children: [
                  TransformHelper.translateAndScale(
                      translateX: constraints.maxWidth * 0.7839999909096576,
                      translateY: constraints.maxHeight * 0.40151518041437323,
                      translateZ: 0,
                      scaleX: scaleX,
                      scaleY: scaleY,
                      scaleZ: 1,
                      child: GeneratedCellularConnectionWidget11())
                ]);
              }),
            ),
            Positioned(
              left: 21.0,
              top: 7.3333001136779785,
              right: null,
              bottom: null,
              width: 54.0,
              height: 21.0,
              child: GeneratedTimeStyleWidget11(),
            )
          ]),
    );
  }
}