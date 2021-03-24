import 'package:flutter/material.dart';

import 'package:flutter_app_two/fig2flutterapp/generatedsignupsigninpagewidget/generated/GeneratedGroup4Widget.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedsignupsigninpagewidget/generated/GeneratedGroup4Widget1.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedsignupsigninpagewidget/generated/GeneratedCreateAccountWidget.dart';

/* Create account button
  */
class GeneratedGroup6Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          Navigator.pushNamed(context, '/GeneratedSignUpSignInpageWidget1'),
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
