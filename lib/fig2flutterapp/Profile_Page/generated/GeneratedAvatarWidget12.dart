import 'package:flutter/material.dart';
import 'package:flutter_app_two/fig2flutterapp/Profile_Page/generated/GeneratedAvatarWidget13.dart';
import 'package:flutter_app_two/fig2flutterapp/Profile_Page/generated/GeneratedAvatarMaskWidget19.dart';
import 'package:flutter_app_two/fig2flutterapp/Profile_Page/generated/GeneratedAvatarMaskWidget18.dart';
import 'package:flutter_app_two/helpers/transform/transform.dart';

/* Frame Avatar
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedAvatarWidget12 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(
          context, '/GeneratedProfileOtherusercontentWidget'),
      child: Container(
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
                child: LayoutBuilder(builder:
                    (BuildContext context, BoxConstraints constraints) {
                  double percentWidth = 1.0;
                  double scaleX = (constraints.maxWidth * percentWidth) / 50.0;

                  double percentHeight = 1.0;
                  double scaleY =
                      (constraints.maxHeight * percentHeight) / 50.0;

                  return Stack(children: [
                    TransformHelper.translateAndScale(
                        translateX: 0,
                        translateY: 0,
                        translateZ: 0,
                        scaleX: scaleX,
                        scaleY: scaleY,
                        scaleZ: 1,
                        child: GeneratedAvatarMaskWidget18())
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
                child: GeneratedAvatarMaskWidget19(),
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
                          child: GeneratedAvatarWidget13(),
                        ))
                  ]);
                }),
              )
            ]),
      ),
    );
  }
}
