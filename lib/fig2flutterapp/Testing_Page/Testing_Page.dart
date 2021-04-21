import 'package:flutter/material.dart';
import 'package:flutter_app_two/fig2flutterapp/Testing_Page/generated/GeneratedFrame1452Widget.dart';
import 'package:flutter_app_two/helpers/transform/transform.dart';
import 'package:flutter_app_two/fig2flutterapp/Testing_Page/generated/GeneratedIcon1024x1024FullWidget2.dart';

/* Testing Page  */

void main() {
  runApp(MaterialApp(
    home: Testing_Page(),
  ));
}

class Testing_Page extends StatefulWidget {
  @override
  MyApp createState() => MyApp();
}

class MyApp extends State<Testing_Page> {

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
              //Go back button
              Positioned(
                left: 287.0,
                top: 56.0,
                right: null,
                bottom: null,
                width: 86.0,
                height: 30.0,
                child: GestureDetector(
                  //TODO - Change the route to pick what page you wanna go
                  onTap: () => Navigator.pushNamed(context, '/Login_CreateAccount'),
                  child: Text(
                    '''Back''',
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
                //ok
                left: 0.0,
                top: 0.0,
                right: 0.0,
                bottom: 0.0,
                width: null,
                height: null,
                child: LayoutBuilder(builder:
                    (BuildContext context, BoxConstraints constraints) {
                  final double width = constraints.maxWidth * 0.296;
                  final double height =
                      constraints.maxHeight * 0.09236453201970443;
                  return Stack(children: [
                    TransformHelper.translate(
                        x: constraints.maxWidth * 0.352,
                        y: constraints.maxHeight * 0.04433497536945813,
                        z: 0,
                        child: Container(
                          width: width,
                          height: height,
                          child: GeneratedIcon1024x1024FullWidget2(),
                        ))
                  ]);
                }),
              ),
              Positioned(
                left: 277.0,
                top: 362.0,
                right: null,
                bottom: null,
                width: 64.0,
                height: 2.0,
                child: GeneratedFrame1452Widget(),
              )
            ]),
      ),
    ));
  }
}
