import 'package:flutter/material.dart';

import 'package:MusicByMasses/fig2flutterapp/Login_CreateAccount/generated/GeneratedGroup4Widget.dart';
import 'package:MusicByMasses/fig2flutterapp/Login_CreateAccount/generated/GeneratedGroup4Widget1.dart';
import 'package:MusicByMasses/fig2flutterapp/Login_CreateAccount/generated/GeneratedCreateAccountWidget.dart';
import 'package:MusicByMasses/fig2flutterapp/registrationPage/registrationPage.dart';
import 'package:page_transition/page_transition.dart';

/* Create account button */
class GeneratedGroup6Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          Navigator.push(context, PageTransition(type: PageTransitionType.fade, duration: Duration(milliseconds: 100), child: registrationPage())),
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
                left: 50.0,
                top: 14.0,
                right: null,
                bottom: null,
                width: 200.0,
                height: 27.0,
                child: GeneratedCreateAccountWidget(),
              )
            ]),
      ),
    );
  }
}
