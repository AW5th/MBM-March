import 'package:flutter/material.dart';
import 'package:flutter_app_two/fig2flutterapp/Artist_Listener/generated/GeneratedGroup4Widget4.dart';
import 'package:flutter_app_two/fig2flutterapp/Artist_Listener/generated/GeneratedListenerWidget.dart';

/* Listener button  */
class Listener_Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/Listener_Selected'),
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
