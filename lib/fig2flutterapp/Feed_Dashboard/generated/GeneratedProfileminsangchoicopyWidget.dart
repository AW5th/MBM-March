import 'package:flutter/material.dart';
import 'package:flutter_app_two/fig2flutterapp/Feed_Dashboard/generated/GeneratedMaskWidget.dart';
import 'package:flutter_app_two/helpers/transform/transform.dart';
import 'package:flutter_app_two/fig2flutterapp/Feed_Dashboard/generated/GeneratedMaskWidget1.dart';
import 'package:flutter_app_two/helpers/svg/svg.dart';
import 'package:flutter_app_two/fig2flutterapp/Feed_Dashboard/generated/GeneratedProfileminsangchoiWidget.dart';
import 'package:flutter_app_two/helpers/mask/mask.dart';

/* Feed Profile Pic*/
class GeneratedProfileminsangchoicopyWidget extends StatelessWidget {
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
            //idk what this is
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
                      child: Container(
                        width: 50.0,
                        height: 50.0,
                        child: SvgWidget(painters: [
                          SvgPathPainter.fill()
                            ..addPath(
                                'M50 25C50 38.8071 38.8071 50 25 50C11.1929 50 0 38.8071 0 25C0 11.1929 11.1929 0 25 0C38.8071 0 50 11.1929 50 25Z')
                            ..color = Color.fromARGB(255, 255, 255, 255),
                        ]),
                      ), )
                ]);
              }),
            ),
            //Profile picture
            Positioned(
              left: 0.0,
              top: 0.0,
              right: null,
              bottom: null,
              //Profile pic size
              width: 50.0,
              height: 50.0,
              child:
              //"Mask.fromSVGPath" makes profile pick round
              Mask.fromSVGPath(
                'M50 25C50 38.8071 38.8071 50 25 50C11.1929 50 0 38.8071 0 25C0 11.1929 11.1929 0 25 0C38.8071 0 50 11.1929 50 25Z',
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
                              final double width = constraints.maxWidth * 1.22;
                              final double height = constraints.maxHeight * 1.22;

                              return Container(
                                      width: width,
                                      height: height,
                                      child: GeneratedProfileminsangchoiWidget(),
                                    );
                            }),
                      )
                    ]),
                offset: Offset(0.0, 0.0),
              ),
            )
          ]),
    );
  }
}
