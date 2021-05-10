import 'package:flutter/material.dart';
import 'package:MusicByMasses/fig2flutterapp/Artist_Listener/generated/GeneratedGroup4Widget4.dart';
import 'package:MusicByMasses/fig2flutterapp/Artist_Listener/generated/GeneratedListenerWidget.dart';
import 'package:MusicByMasses/fig2flutterapp/Listener_Selected/Listener_Selected.dart';
import 'package:page_transition/page_transition.dart';

/* Listener button  */
class Listener_Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(context, PageTransition(type: PageTransitionType.fade, duration: Duration(milliseconds: 100), child: Listener_Selected())),
      child: Container(
        width: 199.0,
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
                width: 199.0,
                height: 52.0,
                child: GeneratedGroup4Widget4(),
              ),
              Positioned(
                left: 47.81171417236328,
                top: 14.0,
                right: null,
                bottom: null,
                width: 109.0227279663086,
                height: 30.0,
                child: GeneratedListenerWidget(),
              )
            ]),
      ),
    );
  }
}
