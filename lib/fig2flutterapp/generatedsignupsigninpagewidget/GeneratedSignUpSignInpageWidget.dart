import 'package:flutter/material.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedsignupsigninpagewidget/generated/GeneratedIcon1024x1024FullWidget1.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedsignupsigninpagewidget/generated/GeneratedGroup6Widget.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedsignupsigninpagewidget/generated/GeneratedGroup5Widget.dart';
import 'package:flutter_app_two/helpers/transform/transform.dart';

/* Frame Sign Up/Sign In page
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedSignUpSignInpageWidget extends StatelessWidget {
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
                      constraints.maxWidth * 0.4666666666666667;

                  final double height =
                      constraints.maxHeight * 0.14517480634116187;

                  return Stack(children: [
                    TransformHelper.translate(
                        x: constraints.maxWidth * 0.26666666666666666,
                        y: constraints.maxHeight * 0.1810344827586207,
                        z: 0,
                        child: Container(
                          width: width,
                          height: height,
                          child: GeneratedIcon1024x1024FullWidget1(),
                        ))
                  ]);
                }),
              ),
              /*
              Positioned(
                left: 50.0,
                top: 545.0,
                right: null,
                bottom: null,
                width: 308.0,
                height: 52.0,
                child: GeneratedGroup5Widget(),
              ),*/
              Positioned(
                left: 50.0,
                top: 610.0,
                right: null,
                bottom: null,
                width: 308.0,
                height: 52.0,
                child: GeneratedGroup6Widget(),
              )
            ]),
      ),
    ));
  }
}
