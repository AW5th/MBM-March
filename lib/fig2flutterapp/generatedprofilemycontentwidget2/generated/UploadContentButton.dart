import 'package:flutter/material.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedprofilemycontentwidget2/generated/UploadBackground.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedprofilemycontentwidget2/generated/UploadText.dart';

/* upload button
  */
class UploadContentButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
              child: UploadBackground(),
            ),
            Positioned(
              left: 119.0,
              top: 15.0,
              right: 113.0,
              bottom: null,
              width: null,
              height: 27.0,
              child: UploadText(),
            )
          ]),
    );
  }
}
