import 'package:flutter/material.dart';
import 'package:flutter_app_two/helpers/mask/mask.dart';

/* box background
  */
class GeneratedIntersectWidget26 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 332.0,
      height: 140.0,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(63, 0, 0, 0),
            offset: Offset(-2.0, -2.0),
            blurRadius: 30.0,
          )
        ],
      ),
      //box background
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
              child: Mask.fromSVGPath(
                'M12 0C5.37258 0 0 5.37258 0 12L0 128C0 134.627 5.37258 140 12 140L320 140C326.627 140 332 134.627 332 128L332 12C332 5.37258 326.627 0 320 0L12 0Z',
                child: Image.asset(
                  "assets/images/28493798c57996f481fc4dff9185b2d9cafd61bb.png",
                  color: null,
                  fit: BoxFit.cover,
                  width: 332.0,
                  height: 140.0,
                  colorBlendMode: BlendMode.dstATop,
                ),
                offset: Offset(0.0, 0.0),
              ),
            )
          ]),
    );
  }
}
