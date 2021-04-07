import 'package:flutter/material.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedsignupsigninpagewidget4/generated/GeneratedGroup1527Widget3.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedsignupsigninpagewidget4/generated/GeneratedMaskGroupWidget3.dart';

/* Group Genre Select `1
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedGenreSelect1Widget3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
        Navigator.pushNamed(context, '/GeneratedSignUpSignInpageWidget5'),
    child: Container(
        width: 298.0,
        height: 103.0,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(63, 0, 0, 0),
              offset: Offset(0.0, 2.0),
              blurRadius: 4.0,
            ),
            BoxShadow(
              color: Color.fromARGB(63, 0, 0, 0),
              offset: Offset(0.0, -2.0),
              blurRadius: 4.0,
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
                right: null,
                bottom: null,
                width: 298.0,
                height: 103.0,
                child: GeneratedMaskGroupWidget3(),
              ),
              Positioned(
                left: 38.0,
                top: 39.0,
                right: null,
                bottom: null,
                width: 211.0,
                height: 25.0,
                child: GeneratedGroup1527Widget3(),
            )
          ]),
    ),
    );
  }
}
