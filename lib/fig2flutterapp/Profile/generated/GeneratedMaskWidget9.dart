import 'package:flutter/material.dart';
import 'package:flutter_app_two/helpers/mask/mask.dart';
import 'package:flutter_app_two/fig2flutterapp/Profile/generated/GeneratedProfileminsangchoiWidget1.dart';
import 'package:flutter_app_two/helpers/transform/transform.dart';

/* profile pic
  */
class GeneratedMaskWidget9 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Mask.fromSVGPath(
      'M100 50C100 77.6142 77.6142 100 50 100C22.3858 100 0 77.6142 0 50C0 22.3858 22.3858 0 50 0C77.6142 0 100 22.3858 100 50Z',
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
              child: GeneratedProfileminsangchoiWidget1(),
              ),

          ]),
      offset: Offset(0.0, 0.0),
    );
  }
}
