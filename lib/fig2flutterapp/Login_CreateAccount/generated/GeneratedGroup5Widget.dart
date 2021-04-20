import 'package:flutter/material.dart';
import 'package:flutter_app_two/fig2flutterapp/Login_CreateAccount/generated/GeneratedGroup4Widget.dart';
import 'package:flutter_app_two/fig2flutterapp/Login_CreateAccount/generated/GeneratedLogInWidget.dart';

/* Login Button  */
class GeneratedGroup5Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          Navigator.pushNamed(context, '/loginPage'),
      child: Container(
      width: 308.0,
      height: 52.0,
      child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          overflow: Overflow.visible,
          children: [
            //Button Colors
            Positioned(
              left: 0.0,
              top: 0.0,
              right: null,
              bottom: null,
              width: 308.0,
              height: 52.0,
              child: GeneratedGroup4Widget(),
            ),
            //Button text
            Positioned(
              left: 73.0,
              top: 14.0,
              right: null,
              bottom: null,
              width: 163.0,
              height: 27.0,
              child: GeneratedLogInWidget(),
              )
        ]),
      ),
    );
  }
}
