import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:MusicByMasses/fig2flutterapp/Artist_Listener/generated/GeneratedIcon1024x1024FullWidget3.dart';
import 'package:MusicByMasses/fig2flutterapp/Artist_Type/Artist_Type.dart';
import 'package:MusicByMasses/helpers/transform/transform.dart';
import 'package:MusicByMasses/fig2flutterapp/Artist_Listener/generated/Artist_Button.dart';
import 'package:MusicByMasses/fig2flutterapp/Artist_Listener/generated/GeneratedGroup7Widget1.dart';
import 'package:MusicByMasses/fig2flutterapp/Artist_Listener/generated/GeneratedIamaanWidget.dart';
import 'package:MusicByMasses/fig2flutterapp/Artist_Listener/generated/Listener_Button.dart';
import 'package:MusicByMasses/fig2flutterapp/registrationPage/generated/GeneratedNextWidget.dart';
import 'package:MusicByMasses/fig2flutterapp/registrationPage/generated/GeneratedGroup4Widget2.dart';
import 'package:page_transition/page_transition.dart';

/* Artist_Listener */
/*
class Artist_Listener extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child:


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
              //Logo
              Positioned(
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
                          child: GeneratedIcon1024x1024FullWidget3(),
                        ))
                  ]);
                }),
              ),
              //I Am Text
              Positioned(
                left: 34.0,
                top: 154.0,
                right: null,
                bottom: null,
                width: 149.0,
                height: 24.0,
                child: GeneratedIamaanWidget(),
              ),
              //Artist_Button
              Positioned(
                left: 88.0,
                top: 219.0,
                right: null,
                bottom: null,
                width: 199.0,
                height: 52.0,
                child: Artist_Button(),
              ),
              //Listener
              Positioned(
                left: 88.0,
                top: 290.0,
                right: null,
                bottom: null,
                width: 199.0,
                height: 52.0,
                child: Listener_Button(),
              ),
              //Next Button
              Positioned(
                left: 34.0,
                top: 490.0,
                right: null,
                bottom: null,
                width: 308.0,
                height: 52.0,
                child: GeneratedGroup7Widget1(),
              )
            ]),
      ),
    ));
  }
}

 */

class Artist_Listener extends StatefulWidget {
  @override
  _ArtistSelectedState createState() => _ArtistSelectedState();
}

class _ArtistSelectedState extends State<Artist_Listener> {
  List<bool> isSelected;

  @override
  void initState() {
    isSelected = List.generate(2, (index) => false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Material(
      child: Stack(alignment: Alignment.center, children: [
        Container(
          width: width,
          height: 100,
          alignment: Alignment.center,
          child: ToggleButtons(
            color: Colors.black,
            borderColor: Colors.grey,
            borderWidth: 4,
            fillColor: Colors.white,
            selectedBorderColor:
            //Color.lerp(Color.fromARGB(255, 255, 121, 0), Color.fromARGB(255, 255, 213, 106), 0.25),
            //alphaBlend(Color.fromARGB(255, 255, 121, 0), Color.fromARGB(255, 255, 213, 106)),
            Color.fromARGB(255, 255, 121, 0),
            selectedColor: Colors.black,
            borderRadius: BorderRadius.circular(100),
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'Artist',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'Listener',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ],
            onPressed: (int index) {
              setState(() {
                for (int i = 0; i < isSelected.length; i++) {
                  isSelected[i] = (i == index);
                }
              });
            },
            isSelected: isSelected,
          ),
        ),
        GestureDetector(
          onTap: () => Navigator.push(context, PageTransition(type: PageTransitionType.fade, duration: Duration(milliseconds: 100), child: Artist_Type())),
          //Navigator.push(context, PageTransition(type: PageTransitionType.fade, duration: Duration(milliseconds: 100), child: '/Artist_Type'),
          //Next Button
          child: Stack(
              fit: StackFit.expand,
              alignment: Alignment.bottomCenter,
              overflow: Overflow.visible,
              children: [
                Positioned(
                  left: 45.0,
                  top: 650.0,
                  right: null,
                  bottom: null,
                  width: 0.0,
                  height: 0.0,
                  child: GeneratedGroup4Widget2(),
                ),
                Positioned(
                  left: 120.0,
                  top: 665.0,
                  right: null,
                  bottom: null,
                  width: 166.0,
                  height: 30.0,
                  child: GeneratedNextWidget(),
                )
              ]),
        ),
      ]),
    );
  }
}
