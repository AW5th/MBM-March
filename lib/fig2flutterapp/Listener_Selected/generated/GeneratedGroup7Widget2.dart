import 'package:flutter/material.dart';
import 'package:flutter_app_two/fig2flutterapp/Artist_Selected/generated/GeneratedGroup4Widget8.dart';
import 'package:flutter_app_two/fig2flutterapp/Artist_Selected/generated/GeneratedNextWidget2.dart';

/* next button  */
class GeneratedGroup7Widget2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          Navigator.pushNamed(context, '/Artist_Type'),
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
