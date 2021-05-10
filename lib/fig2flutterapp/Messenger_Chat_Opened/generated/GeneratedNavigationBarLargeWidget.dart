import 'package:flutter/material.dart';
import 'package:MusicByMasses/fig2flutterapp/Messenger_Chat_Opened/generated/GeneratedKeyboardWidget.dart';
import 'package:MusicByMasses/fig2flutterapp/Messenger_Chat_Opened/generated/GeneratedDirectionWidget5.dart';
import 'package:MusicByMasses/fig2flutterapp/Messenger_Chat_Opened/generated/GeneratedNavigationBarWidget.dart';
import 'package:MusicByMasses/fig2flutterapp/Messenger_Chat_Opened/generated/GeneratedNavigationBarWidget1.dart';
import 'package:MusicByMasses/fig2flutterapp/Messenger_Chat_Opened/generated/GeneratedControlsRightWidget.dart';
import 'package:MusicByMasses/fig2flutterapp/Messenger_Chat_Opened/generated/GeneratedInfoButtonWidget.dart';
import 'package:MusicByMasses/fig2flutterapp/Messenger_Chat_Opened/generated/GeneratedAutocorrectionBarWidget.dart';
import 'package:MusicByMasses/fig2flutterapp/Messenger_Chat_Opened/generated/GeneratedNavigationBarBackgroundWidget.dart';
import 'package:MusicByMasses/fig2flutterapp/Messenger_Chat_Opened/generated/GeneratedCombinedShapeWidget.dart';
import 'package:MusicByMasses/helpers/transform/transform.dart';
import 'package:MusicByMasses/fig2flutterapp/Messenger_Chat_Opened/generated/GeneratedTitleWidget4.dart';

/* Frame Navigation Bar - Large
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedNavigationBarLargeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.zero,
      child: Container(
        width: 375.0,
        height: 813.0,
        child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,
            overflow: Overflow.visible,
            children: [
              Positioned(
                left: 0.0,
                top: 1.0,
                right: 0.0,
                bottom: 672.0,
                width: null,
                height: null,
                child: GeneratedNavigationBarBackgroundWidget(),
              ),
              Positioned(
                left: null,
                top: null,
                right: 0.0,
                bottom: 724.0,
                width: 310.0,
                height: 44.0,
                child: GeneratedControlsRightWidget(),
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

                  final double height =
                      constraints.maxHeight * 0.14391143911439114;

                  return Stack(children: [
                    TransformHelper.translate(
                        x: 0,
                        y: constraints.maxHeight * 0.0009626186788448695,
                        z: 0,
                        child: Container(
                          width: width,
                          height: height,
                          child: GeneratedCombinedShapeWidget(),
                        ))
                  ]);
                }),
              ),
              Positioned(
                left: 354.2069091796875,
                top: 59.0,
                right: null,
                bottom: null,
                width: 26.20689582824707,
                height: 24.27597999572754,
                child: GeneratedDirectionWidget5(),
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
                  final double width = constraints.maxWidth - 353.37646484375;
                  final double scaleX =
                      width <= 0 ? 0 : (width / 21.62353515625);

                  final double height = constraints.maxHeight - 791.384765625;
                  final double scaleY =
                      height <= 0 ? 0 : (height / 21.615234375);

                  final Widget child = GeneratedInfoButtonWidget();
                  return Stack(children: [
                    Transform(
                      transform: Matrix4(scaleX, 0, 0, 0, 0, scaleY, 0, 0, 0, 0,
                          1, 0, 337.0 * scaleX, 55.0 * scaleY, 0, 1),
                      alignment: Alignment.topLeft,
                      child: SizedBox.expand(child: child),
                    )
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
                child: LayoutBuilder(builder:
                    (BuildContext context, BoxConstraints constraints) {
                  final double width = constraints.maxWidth * 0.032;

                  final double height =
                      constraints.maxHeight * 0.025830258302583026;

                  return Stack(children: [
                    TransformHelper.translate(
                        x: constraints.maxWidth * 0.024,
                        y: constraints.maxHeight * 0.06765067650676507,
                        z: 0,
                        child: Container(
                          width: width,
                          height: height,
                          child: GeneratedNavigationBarWidget(),
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
                child: LayoutBuilder(builder:
                    (BuildContext context, BoxConstraints constraints) {
                  final double width = constraints.maxWidth * 0.032;

                  final double height =
                      constraints.maxHeight * 0.025830258302583026;

                  return Stack(children: [
                    TransformHelper.translate(
                        x: constraints.maxWidth * 0.024,
                        y: constraints.maxHeight * 0.06765067650676507,
                        z: 0,
                        child: Container(
                          width: width,
                          height: height,
                          child: GeneratedNavigationBarWidget1(),
                        ))
                  ]);
                }),
              ),
              Positioned(
                left: 136.0,
                top: null,
                right: 134.0,
                bottom: 686.0,
                width: null,
                height: 43.0,
                child: GeneratedTitleWidget4(),
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

                  final double height =
                      constraints.maxHeight * 0.05412054120541206;

                  return Stack(children: [
                    TransformHelper.translate(
                        x: 0,
                        y: constraints.maxHeight * 0.5879458794587946,
                        z: 0,
                        child: Container(
                          width: width,
                          height: height,
                          child: GeneratedAutocorrectionBarWidget(),
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
                child: LayoutBuilder(builder:
                    (BuildContext context, BoxConstraints constraints) {
                  final double width = constraints.maxWidth;

                  final double height =
                      constraints.maxHeight * 0.35793357933579334;

                  return Stack(children: [
                    TransformHelper.translate(
                        x: 0,
                        y: constraints.maxHeight * 0.6420664206642066,
                        z: 0,
                        child: Container(
                          width: width,
                          height: height,
                          child: GeneratedKeyboardWidget(),
                        ))
                  ]);
                }),
              )
            ]),
      ),
    );
  }
}
