import 'package:flutter/material.dart';
import 'package:flutter_app_two/fig2flutterapp/Login_CreateAccount/generated/GeneratedIcon1024x1024FullWidget1.dart';
import 'package:flutter_app_two/fig2flutterapp/Login_CreateAccount/generated/GeneratedGroup6Widget.dart';
import 'package:flutter_app_two/fig2flutterapp/Login_CreateAccount/generated/GeneratedGroup5Widget.dart';
import 'package:flutter_app_two/helpers/transform/transform.dart';

/*  Sign Up/Log In page */
class Login_CreateAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: ClipRRect(
      borderRadius: BorderRadius.zero,
      child: Container(
        width: 375.0,
        height: 812.0,
        child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,
            overflow: Overflow.visible,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.zero,
                child: Container(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              //Added Test button
              Positioned(
                left: 287.0,
                top: 56.0,
                right: null,
                bottom: null,
                width: 86.0,
                height: 30.0,
                child: GestureDetector(
                  //TODO - Change the route to pick what page you wanna go
                  onTap: () => Navigator.pushNamed(context, '/Testing_Page'),
                  child: Text(
                    '''backend''',
                    overflow: TextOverflow.visible,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      height: 1.2222222222222223,
                      fontSize: 18.0,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,

                      /* letterSpacing: -0.40799999237060547, */
                    ),
                  ),
                ),
              ),
              //Added Test2 button
              Positioned(
                left: 57.0,
                top: 56.0,
                right: null,
                bottom: null,
                width: 86.0,
                height: 30.0,
                child: GestureDetector(
                  //TODO - Change the route to pick what page you wanna go
                  onTap: () => Navigator.pushNamed(context, '/Testing_Page2'),
                  child: Text(
                    '''front end''',
                    overflow: TextOverflow.visible,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      height: 1.2222222222222223,
                      fontSize: 18.0,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,

                      /* letterSpacing: -0.40799999237060547, */
                    ),
                  ),
                ),
              ),
              //redirect button
              Positioned(
                left: 157.0,
                top: 56.0,
                right: null,
                bottom: null,
                width: 86.0,
                height: 30.0,
                child: GestureDetector(
                  //TODO - Change the route to pick what page you wanna go
                  onTap: () => Navigator.pushNamed(context, '/Artist_Listener'),
                  child: Text(
                    '''redirect''',
                    overflow: TextOverflow.visible,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      height: 1.2222222222222223,
                      fontSize: 18.0,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,

                      /* letterSpacing: -0.40799999237060547, */
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0.0,
                top: 0.0,
                right: 0.0,
                bottom: 0.0,
                width: null,
                height: null,
                child: LayoutBuilder(builder:
                    (BuildContext context, BoxConstraints constraints) {
                  final double width =
                      constraints.maxWidth * 0.4666666666666667;

                  final double height =
                      constraints.maxHeight * 0.14517480634116187;

                  return Stack(children: [
                    TransformHelper.translate(
                        x: constraints.maxWidth * 0.26666666666666666,
                        y: constraints.maxHeight * 0.1810344827586207,
                        z: 0,
                        child: Container(
                          width: width,
                          height: height,
                          child: GeneratedIcon1024x1024FullWidget1(),
                        ))
                  ]);
                }),
              ),
              //Login Button
              Positioned(
                left: 50.0,
                top: 545.0,
                right: null,
                bottom: null,
                width: 308.0,
                height: 52.0,
                child: GeneratedGroup5Widget(),
              ),
              //Create Account Button
              Positioned(
                left: 50.0,
                top: 610.0,
                right: null,
                bottom: null,
                width: 308.0,
                height: 52.0,
                child: GeneratedGroup6Widget(),
              )
            ]),
      ),
    ));
  }
}
