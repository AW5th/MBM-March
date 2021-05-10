import 'package:flutter/material.dart';
import 'package:MusicByMasses/fig2flutterapp/Profile/generated/GeneratedRectangleWidget54.dart';
import 'package:MusicByMasses/helpers/transform/transform.dart';
import 'package:MusicByMasses/fig2flutterapp/Profile/generated/GeneratedOvalWidget12.dart';
import 'package:MusicByMasses/fig2flutterapp/Profile/generated/GeneratedRectangleWidget53.dart';

/* Group Group
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedGroupWidget1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 31.083251953125,
      height: 41.833335876464844,
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
                double percentWidth = 0.5820531871234792;
                double scaleX =
                    (constraints.maxWidth * percentWidth) / 18.092105865478516;

                double percentHeight = 0.5478087620338493;
                double scaleY = (constraints.maxHeight * percentHeight) /
                    22.916667938232422;

                return Stack(children: [
                  TransformHelper.translateAndScale(
                      translateX: 0,
                      translateY: constraints.maxHeight * 0.4521912379661507,
                      translateZ: 0,
                      scaleX: scaleX,
                      scaleY: scaleY,
                      scaleZ: 1,
                      child: GeneratedOvalWidget12())
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
                final double width = constraints.maxWidth * 0.15874175041432015;

                final double height =
                    constraints.maxHeight * 0.6474103800003611;

                return Stack(children: [
                  TransformHelper.translate(
                      x: constraints.maxWidth * 0.4233116207969085,
                      y: constraints.maxHeight * 0.05378485728808051,
                      z: 0,
                      child: Container(
                        width: width,
                        height: height,
                        child: GeneratedRectangleWidget53(),
                      ))
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
                final double width = constraints.maxWidth * 0.5790899879827517;

                final double height =
                    constraints.maxHeight * 0.19123504813539738;

                return Stack(children: [
                  TransformHelper.translate(
                      x: constraints.maxWidth * 0.42091001201724826,
                      y: 0,
                      z: 0,
                      child: Container(
                        width: width,
                        height: height,
                        child: GeneratedRectangleWidget54(),
                      ))
                ]);
              }),
            )
          ]),
    );
  }
}
