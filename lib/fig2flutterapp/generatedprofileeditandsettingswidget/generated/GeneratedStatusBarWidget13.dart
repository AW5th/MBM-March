import 'package:flutter/material.dart';
import 'package:MusicByMasses/fig2flutterapp/generatedprofileeditandsettingswidget/generated/GeneratedTimeStyleWidget13.dart';
import 'package:MusicByMasses/fig2flutterapp/generatedprofileeditandsettingswidget/generated/GeneratedBatteryWidget13.dart';
import 'package:MusicByMasses/helpers/transform/transform.dart';
import 'package:MusicByMasses/fig2flutterapp/generatedprofileeditandsettingswidget/generated/GeneratedCellularConnectionWidget13.dart';
import 'package:MusicByMasses/fig2flutterapp/generatedprofileeditandsettingswidget/generated/GeneratedWifiWidget13.dart';

/* Instance Status Bar
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedStatusBarWidget13 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375.0,
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
              child: GeneratedBatteryWidget13(),
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
                double percentWidth = 0.04088879903157552;
                double scaleX =
                    (constraints.maxWidth * percentWidth) / 15.33329963684082;

                double percentHeight = 0.25;
                double scaleY = (constraints.maxHeight * percentHeight) / 11.0;

                return Stack(children: [
                  TransformHelper.translateAndScale(
                      translateX: constraints.maxWidth * 0.8426666666666667,
                      translateY: constraints.maxHeight * 0.3938789367675781,
                      translateZ: 0,
                      scaleX: scaleX,
                      scaleY: scaleY,
                      scaleZ: 1,
                      child: GeneratedWifiWidget13())
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
                double percentWidth = 0.04533333333333334;
                double scaleX = (constraints.maxWidth * percentWidth) / 17.0;

                double percentHeight = 0.24242424964904785;
                double scaleY = (constraints.maxHeight * percentHeight) /
                    10.666666984558105;

                return Stack(children: [
                  TransformHelper.translateAndScale(
                      translateX: constraints.maxWidth * 0.784,
                      translateY: constraints.maxHeight * 0.40151518041437323,
                      translateZ: 0,
                      scaleX: scaleX,
                      scaleY: scaleY,
                      scaleZ: 1,
                      child: GeneratedCellularConnectionWidget13())
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
              child: GeneratedTimeStyleWidget13(),
            )
          ]),
    );
  }
}
