import 'package:flutter/material.dart';
import 'package:flutter_app_two/fig2flutterapp/Messenger_Chat/generated/GeneratedBitmapWidget17.dart';
import 'package:flutter_app_two/helpers/transform/transform.dart';

/* Instance Technologies and Extensions/Messaging/x/Avatar 6
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedTechnologiesandExtensionsMessagingxAvatar6Widget
    extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45.0,
      height: 45.0,
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
                        child: GeneratedBitmapWidget17(),
                      ))
                ]);
              }),
            )
          ]),
    );
  }
}
