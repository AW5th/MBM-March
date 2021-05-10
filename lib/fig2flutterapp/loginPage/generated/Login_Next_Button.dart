import 'package:MusicByMasses/helpers/svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:MusicByMasses/fig2flutterapp/Feed_Dashboard/Feed_Dashboard.dart';
import 'package:MusicByMasses/fig2flutterapp/registrationPage/generated/GeneratedNextWidget.dart';
import 'package:page_transition/page_transition.dart';
import 'package:MusicByMasses/fig2flutterapp/Next_Button.dart';

/* LoginNextButton  */

class Login_Next_Button extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          Navigator.push(context, PageTransition(type: PageTransitionType.fade, duration: Duration(milliseconds: 100), child: Feed_Dashboard())),
      child: Next_Button(),
    );
  }
}
