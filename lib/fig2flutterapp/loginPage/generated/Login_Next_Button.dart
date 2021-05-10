import 'package:flutter/material.dart';
import 'package:MusicByMasses/fig2flutterapp/Feed_Dashboard/Feed_Dashboard.dart';
import 'package:MusicByMasses/fig2flutterapp/registrationPage/generated/GeneratedGroup4Widget2.dart';
import 'package:MusicByMasses/fig2flutterapp/registrationPage/generated/GeneratedNextWidget.dart';
import 'package:page_transition/page_transition.dart';

/* LoginNextButton  */

class Login_Next_Button extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          Navigator.push(context, PageTransition(type: PageTransitionType.fade, duration: Duration(milliseconds: 100), child: Feed_Dashboard())),
      child: Container(
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
                child: GeneratedGroup4Widget2(),
              ),
              Positioned(
                left: 74.0,
                top: 14.0,
                right: null,
                bottom: null,
                width: 166.0,
                height: 30.0,
                child: GeneratedNextWidget(),
              )
            ]),
      ),
    );
  }
}
