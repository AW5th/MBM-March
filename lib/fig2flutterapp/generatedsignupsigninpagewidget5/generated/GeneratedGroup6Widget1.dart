import 'package:flutter/material.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedsignupsigninpagewidget5/generated/SaveButton.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedsignupsigninpagewidget5/generated/GeneratedSaveWidget.dart';

/* Group Group 6
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedGroup6Widget1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/GeneratedCometitionsWidget'),
      child: Container(
        width: 308.0,
        height: 52.0,
        child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,
            overflow: Overflow.visible,
            children: [
              Positioned(
                left: 0.0,
                top: 0.0,
                right: null,
                bottom: null,
                width: 308.0,
                height: 52.0,
                child: GeneratedGroup4Widget16(),
              ),
              Positioned(
                left: 73.0,
                top: 14.0,
                right: null,
                bottom: null,
                width: 166.0,
                height: 30.0,
                child: GeneratedSaveWidget(),
              )
            ]),
      ),
    );
  }
}
