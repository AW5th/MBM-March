import 'package:flutter/material.dart';
import 'package:MusicByMasses/fig2flutterapp/generateddashboardzachwidget4/generated/GeneratedAvatarMaskWidget47.dart';
import 'package:MusicByMasses/fig2flutterapp/generateddashboardzachwidget4/generated/GeneratedTechnologiesandExtensionsMessagingxAvatar7Widget4.dart';
import 'package:MusicByMasses/helpers/transform/transform.dart';
import 'package:MusicByMasses/fig2flutterapp/generateddashboardzachwidget4/generated/GeneratedAvatarMaskWidget46.dart';

/* Frame Avatar
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedAvatarWidget34 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.0,
      height: 50.0,
      child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          overflow: Overflow.visible,
          children: [
            Positioned(
              left: 0.0,
              top: 0.0,
              right: 0.0,
              bottom: 0.0,
              width: null,
              height: null,
              child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                double percentWidth = 1.0;
                double scaleX = (constraints.maxWidth * percentWidth) / 50.0;

                double percentHeight = 1.0;
                double scaleY = (constraints.maxHeight * percentHeight) / 50.0;

                return Stack(children: [
                  TransformHelper.translateAndScale(
                      translateX: 0,
                      translateY: 0,
                      translateZ: 0,
                      scaleX: scaleX,
                      scaleY: scaleY,
                      scaleZ: 1,
                      child: GeneratedAvatarMaskWidget46())
                ]);
              }),
            ),
            Positioned(
              left: 0.0,
              top: 0.0,
              right: null,
              bottom: null,
              width: 50.0,
              height: 50.0,
              child: GeneratedAvatarMaskWidget47(),
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
                final double width = constraints.maxWidth;

                final double height = constraints.maxHeight;

                return Stack(children: [
                  TransformHelper.translate(
                      x: 0,
                      y: 0,
                      z: 0,
                      child: Container(
                        width: width,
                        height: height,
                        child:
                            GeneratedTechnologiesandExtensionsMessagingxAvatar7Widget4(),
                      ))
                ]);
              }),
            )
          ]),
    );
  }
}
