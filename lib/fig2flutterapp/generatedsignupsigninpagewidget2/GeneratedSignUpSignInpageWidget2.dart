import 'package:flutter/material.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedsignupsigninpagewidget2/generated/GeneratedIcon1024x1024FullWidget3.dart';
import 'package:flutter_app_two/helpers/transform/transform.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedsignupsigninpagewidget2/generated/GeneratedGroup8Widget.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedsignupsigninpagewidget2/generated/GeneratedGroup7Widget1.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedsignupsigninpagewidget2/generated/GeneratedIamaanWidget.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedsignupsigninpagewidget2/generated/GeneratedGroup9Widget.dart';

/* Artist/Listener */
class GeneratedSignUpSignInpageWidget2 extends StatelessWidget {
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
                  final double width = constraints.maxWidth * 0.296;

                  final double height =
                      constraints.maxHeight * 0.09236453201970443;

                  return Stack(children: [
                    TransformHelper.translate(
                        x: constraints.maxWidth * 0.352,
                        y: constraints.maxHeight * 0.04433497536945813,
                        z: 0,
                        child: Container(
                          width: width,
                          height: height,
                          child: GeneratedIcon1024x1024FullWidget3(),
                        ))
                  ]);
                }),
              ),
              Positioned(
                left: 34.0,
                top: 154.0,
                right: null,
                bottom: null,
                width: 149.0,
                height: 24.0,
                child: GeneratedIamaanWidget(),
              ),
              Positioned(
                left: 88.0,
                top: 219.0,
                right: null,
                bottom: null,
                width: 199.0,
                height: 52.0,
                child: GeneratedGroup8Widget(),
              ),
              Positioned(
                left: 88.0,
                top: 290.0,
                right: null,
                bottom: null,
                width: 199.0,
                height: 52.0,
                child: GeneratedGroup9Widget(),
              ),
              Positioned(
                left: 34.0,
                top: 490.0,
                right: null,
                bottom: null,
                width: 308.0,
                height: 52.0,
                child: GeneratedGroup7Widget1(),
              )
            ]),
      ),
    ));
  }
}
