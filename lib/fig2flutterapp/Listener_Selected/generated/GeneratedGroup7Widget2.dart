import 'package:flutter/material.dart';
import 'package:MusicByMasses/fig2flutterapp/Artist_Selected/generated/GeneratedGroup4Widget8.dart';
import 'package:MusicByMasses/fig2flutterapp/Artist_Selected/generated/GeneratedNextWidget2.dart';
import 'package:MusicByMasses/fig2flutterapp/Artist_Type/Artist_Type.dart';
import 'package:page_transition/page_transition.dart';

/* next button  */
class GeneratedGroup7Widget2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          Navigator.push(context, PageTransition(type: PageTransitionType.fade, duration: Duration(milliseconds: 100), child: Artist_Type())),
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
                child: GeneratedGroup4Widget8(),
              ),
              Positioned(
                left: 74.0,
                top: 14.0,
                right: null,
                bottom: null,
                width: 166.0,
                height: 30.0,
                child: GeneratedNextWidget2(),
              )
            ]),
      ),
    );
  }
}
