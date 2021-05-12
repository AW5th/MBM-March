import 'dart:ui';

import 'package:MusicByMasses/helpers/svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:MusicByMasses/fig2flutterapp/Artist_Listener/generated/GeneratedIcon1024x1024FullWidget3.dart';
import 'package:MusicByMasses/fig2flutterapp/Artist_Type/Artist_Type.dart';
import 'package:MusicByMasses/helpers/transform/transform.dart';
import 'package:MusicByMasses/fig2flutterapp/Artist_Listener/generated/Artist_Button.dart';
import 'package:MusicByMasses/fig2flutterapp/Artist_Listener/generated/GeneratedGroup7Widget1.dart';
import 'package:MusicByMasses/fig2flutterapp/Artist_Listener/generated/GeneratedIamaanWidget.dart';
import 'package:MusicByMasses/fig2flutterapp/Artist_Listener/generated/Listener_Button.dart';
import 'package:MusicByMasses/fig2flutterapp/registrationPage/generated/GeneratedNextWidget.dart';
import 'package:page_transition/page_transition.dart';

/* Artist_Listener */

class Artist_Listener extends StatefulWidget {
  @override
  _ArtistSelectedState createState() => _ArtistSelectedState();
}

class _ArtistSelectedState extends State<Artist_Listener> {
  AlertDialog dialog(BuildContext context) => AlertDialog(
    title: Text('Wait!'),
    content: Text("You have to finish setting up your profile!"),
    actions: [
      FlatButton(
        textColor: Color.fromARGB(255, 255, 121, 0),
        onPressed: () { Navigator.pop(context); },
        child: Text('Close'),
      ),
    ],
  );
  AlertDialog dialog2(BuildContext context) => AlertDialog(
    title: Text('You have to make a selection'),
    content: Text("Are you are a artist or listener?"),
    actions: [
      FlatButton(
        textColor: Color.fromARGB(255, 255, 121, 0),
        onPressed: () { Navigator.pop(context); },
        child: Text('Close'),
      ),
    ],
  );

  Future<bool> _goBack() {
    showDialog<void>(context: context, builder: (context) => dialog(context));
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _goBack,
      child: Material(
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
    GestureDetector(
    onTap: () {
      showDialog<void>(context: context, builder: (context) => dialog2(context));
    },
    child: Stack(children: [
                Positioned(
                  left: 34.0,
                  top: 490.0,
                  right: null,
                  bottom: null,
                  width: 308.0,
                  height: 52.0,
                  child: GeneratedGroup7Widget1(),
                ) ]),
    ),
              ]),
      ),
    );
  }

  List<bool> isSelected;

  @override
  void initState() {
    isSelected = List.generate(2, (index) => false);
    super.initState();
  }

  /*
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
                  child: Container(
                    width: 308.0,
                    height: 52.0,
                    child: SvgWidget(painters: [
                      SvgPathPainter.fill()
                        ..addPath(
                            'M0 20C0 8.9543 8.95431 0 20 0L288 0C299.046 0 308 8.95431 308 20L308 32C308 43.0457 299.046 52 288 52L20 52C8.95431 52 0 43.0457 0 32L0 20Z')
                        ..color = Color.fromARGB(
                            255, 255, 255, 255),
                      SvgPathPainter.stroke(
                        3.0,
                        strokeJoin: StrokeJoin.miter,
                      )
                        ..addPath(
                            'M20 3L288 3L288 -3L20 -3L20 3ZM305 20L305 32L311 32L311 20L305 20ZM288 49L20 49L20 55L288 55L288 49ZM3 32L3 20L-3 20L-3 32L3 32ZM20 49C10.6112 49 3 41.3888 3 32L-3 32C-3 44.7025 7.29746 55 20 55L20 49ZM305 32C305 41.3888 297.389 49 288 49L288 55C300.703 55 311 44.7025 311 32L305 32ZM288 3C297.389 3 305 10.6112 305 20L311 20C311 7.29745 300.703 -3 288 -3L288 3ZM20 -3C7.29745 -3 -3 7.29745 -3 20L3 20C3 10.6112 10.6112 3 20 3L20 -3Z')
                        ..addClipPath(
                            'M0 20C0 8.9543 8.95431 0 20 0L288 0C299.046 0 308 8.95431 308 20L308 32C308 43.0457 299.046 52 288 52L20 52C8.95431 52 0 43.0457 0 32L0 20Z')
                        ..setLinearGradient(
                          startX: -10.000000370791977,
                          startY: 25.999981860616856,
                          endX: 319.50000575068253,
                          endY: 25.999980647753958,
                          colors: [
                            Color.fromARGB(
                                255, 255, 213, 106),
                            Color.fromARGB(
                                255, 255, 122, 0)
                          ],
                          colorStops: [0.0, 1.0],
                        ),
                    ]),
                  ),
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
  } */
}
