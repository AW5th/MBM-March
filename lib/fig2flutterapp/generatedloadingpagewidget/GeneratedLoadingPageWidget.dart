import 'package:flutter/material.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedloadingpagewidget/generated/GeneratedIcon1024x1024FullWidget.dart';
import 'package:flutter_app_two/helpers/transform/transform.dart';

/* LANDING PAGE */
class GeneratedLoadingPageWidget extends StatelessWidget {
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
                bottom: 0.0,
                width: null,
                height: null,
                child: LayoutBuilder(builder:
                    (BuildContext context, BoxConstraints constraints) {
                  final double width =
                      constraints.maxWidth * 0.6666666666666666;

                  final double height =
                      constraints.maxHeight * 0.20739257511834205;

                  return Stack(children: [
                    TransformHelper.translate(
                        x: constraints.maxWidth * 0.168,
                        y: constraints.maxHeight * 0.3435960591133005,
                        z: 0,
                        child: Container(
                          width: width,
                          height: height,
                          child: GeneratedIcon1024x1024FullWidget(),
                        ))
                  ]);
                }),
              )
            ]),
      ),
    ));
  }
}
