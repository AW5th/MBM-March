import 'package:flutter/material.dart';
import 'package:flutter_app_two/fig2flutterapp/Profile_Page/generated/GeneratedIcon1024x1024FullWidget9.dart';
import 'package:flutter_app_two/fig2flutterapp/Profile_Page/generated/GeneratedEllipse3Widget1.dart';
import 'package:flutter_app_two/helpers/transform/transform.dart';

/* Group Group 1526
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedGroup1526Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          Navigator.pushNamed(context, '/GeneratedDashboardZachWidget3'),
      child: Container(
        width: 75.0,
        height: 75.0,
        child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,
            overflow: Overflow.visible,
            children: [
              Positioned(
                left: 0.0,
                top: null,
                right: null,
                bottom: null,
                width: 75.0,
                height: 75.0,
                child: GeneratedEllipse3Widget1(),
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
                      constraints.maxHeight * 0.40182647705078123;

                  return Stack(children: [
                    TransformHelper.translate(
                        x: constraints.maxWidth * 0.17333333333333334,
                        y: constraints.maxHeight * 0.26666666666666666,
                        z: 0,
                        child: Container(
                          width: width,
                          height: height,
                          child: GeneratedIcon1024x1024FullWidget9(),
                        ))
                  ]);
                }),
              )
            ]),
      ),
    );
  }
}