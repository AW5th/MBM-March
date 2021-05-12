import 'package:MusicByMasses/fig2flutterapp/Artist_Listener/Artist_Listener.dart';
import 'package:flutter/material.dart';
import 'package:MusicByMasses/fig2flutterapp/Artist_Type/generated/GeneratedSkipWidget.dart';
import 'package:MusicByMasses/fig2flutterapp/Artist_Type/generated/GeneratedIcon1024x1024FullWidget5.dart';
import 'package:MusicByMasses/fig2flutterapp/Artist_Type/generated/GeneratedStatusBarWidget.dart';
import 'package:MusicByMasses/helpers/transform/transform.dart';
import 'package:MusicByMasses/fig2flutterapp/Artist_Type/generated/GeneratedGenreSelect1Widget.dart';
import 'package:MusicByMasses/fig2flutterapp/Artist_Type/generated/GeneratedGenreSelect1Widget3.dart';
import 'package:MusicByMasses/fig2flutterapp/Artist_Type/generated/GeneratedGenreSelect1Widget1.dart';
import 'package:MusicByMasses/fig2flutterapp/Artist_Type/generated/GeneratedGenreSelect1Widget2.dart';
import 'package:page_transition/page_transition.dart';

/* Artist_Type  */
class Artist_Type extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Artist_Type> {
  //Goes back to correct page
  Future<bool> _goBack() {
    Navigator.push(context, PageTransition(type: PageTransitionType.fade, duration: Duration(milliseconds: 100), child: Artist_Listener()));
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _goBack,
      child: Material(
          child: Container(
          width: 375.0,
          height: 812.0,
          child: Stack(
              fit: StackFit.expand,
              alignment: Alignment.center,
              overflow: Overflow.visible,
              children: [
                //Background
                Container(
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                //skip
                Positioned(
                  left: 287.0,
                  top: 61.0,
                  right: null,
                  bottom: null,
                  width: 86.0,
                  height: 30.0,
                  child: GeneratedSkipWidget(),
                ),
                //All four buttons
                Positioned(
                  left: 38.0,
                  top: 169.0,
                  right: null,
                  bottom: null,
                  width: 298.0,
                  height: 523.0,
                  child: Container(
                    width: 298.0,
                    height: 523.0,
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
                            width: 298.0,
                            height: 103.0,
                            child: GeneratedGenreSelect1Widget(),
                          ),
                          Positioned(
                            left: 0.0,
                            top: 280.0,
                            right: null,
                            bottom: null,
                            width: 298.0,
                            height: 103.0,
                            child: GeneratedGenreSelect1Widget1(),
                          ),
                          Positioned(
                            left: 0.0,
                            top: 140.0,
                            right: null,
                            bottom: null,
                            width: 298.0,
                            height: 103.0,
                            child: GeneratedGenreSelect1Widget2(),
                          ),
                          Positioned(
                            left: 0.0,
                            top: 420.0,
                            right: null,
                            bottom: null,
                            width: 298.0,
                            height: 103.0,
                            child: GeneratedGenreSelect1Widget3(),
                          )
                        ]),
                  ),
                ),
                //logo
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
                        constraints.maxWidth * 0.19466666666666665;

                    final double height =
                        constraints.maxHeight * 0.054187192118226604;

                    return Stack(children: [
                      TransformHelper.translate(
                          x: constraints.maxWidth * 0.4026666666666667,
                          y: constraints.maxHeight * 0.06280788177339902,
                          z: 0,
                          child: Container(
                            width: width,
                            height: height,
                            child: GeneratedIcon1024x1024FullWidget5(),
                          ))
                    ]);
                  }),
                )
              ]),
        ),
      ),
    );
  }
}
