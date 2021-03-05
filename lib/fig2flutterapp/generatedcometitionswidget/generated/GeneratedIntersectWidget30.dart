import 'package:flutter/material.dart';
import 'package:flutter_app_two/helpers/mask/mask.dart';

/* BooleanOperation Intersect
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedIntersectWidget30 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 293.0,
      height: 151.0,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(63, 0, 0, 0),
            offset: Offset(2.0, 2.0),
            blurRadius: 8.0,
          ),
          BoxShadow(
            color: Color.fromARGB(63, 0, 0, 0),
            offset: Offset(-2.0, -2.0),
            blurRadius: 8.0,
          )
        ],
      ),
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
                'M8 0C3.58172 0 0 3.58172 0 8L0 143C0 147.418 3.58172 151 8 151L285 151C289.418 151 293 147.418 293 143L293 8C293 3.58172 289.418 0 285 0L8 0Z',
                child: Image.asset(
                  "assets/images/c8f0c3fd24d920dfb62fc74379d24ff4147ad911.png",
                  color: null,
                  fit: BoxFit.cover,
                  width: 293.0,
                  height: 151.0,
                  colorBlendMode: BlendMode.dstATop,
                ),
                offset: Offset(0.0, 0.0),
              ),
            )
          ]),
    );
  }
}
