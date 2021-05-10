import 'package:flutter/material.dart';
import 'package:MusicByMasses/fig2flutterapp/Messenger_Chat_Opened/generated/GeneratedBackgroundWidget9.dart';

/* Instance Navigation Bar Background
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedNavigationBarBackgroundWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: false,
      child: Container(
        width: 375.0,
        height: 140.0,
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
                  final double width = constraints.maxWidth - 325.0;
                  final double scaleX = width <= 0 ? 0 : (width / 50.0);

                  final double height = constraints.maxHeight - 110.0;
                  final double scaleY = height <= 0 ? 0 : (height / 30.0);

                  final Widget child = GeneratedBackgroundWidget9();
                  return Stack(children: [
                    Transform(
                      transform: Matrix4(scaleX, 0, 0, 0, 0, scaleY, 0, 0, 0, 0,
                          1, 0, 0.0, 0.0, 0, 1),
                      alignment: Alignment.topLeft,
                      child: SizedBox.expand(child: child),
                    )
                  ]);
                }),
              )
            ]),
      ),
    );
  }
}
