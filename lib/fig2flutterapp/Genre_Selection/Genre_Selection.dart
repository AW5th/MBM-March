import 'package:MusicByMasses/fig2flutterapp/Artist_Type/Artist_Type.dart';
import 'package:flutter/material.dart';
import 'package:MusicByMasses/fig2flutterapp/Button_Parts/GenreBoxOutline.dart';
import 'package:MusicByMasses/fig2flutterapp/Genre_Selection/generated/SaveButton.dart';
import 'package:MusicByMasses/fig2flutterapp/Genre_Selection/generated/MetalButton.dart';
import 'package:MusicByMasses/fig2flutterapp/Genre_Selection/generated/GeneratedIcon1024x1024FullWidget6.dart';
import 'package:MusicByMasses/helpers/transform/transform.dart';
import 'package:MusicByMasses/fig2flutterapp/Genre_Selection/generated/JazzButton.dart';
import 'package:MusicByMasses/fig2flutterapp/Genre_Selection/generated/IndieButton.dart';
import 'package:MusicByMasses/fig2flutterapp/Genre_Selection/generated/EDMButton.dart';
import 'package:MusicByMasses/fig2flutterapp/Genre_Selection/generated/GeneratedSkipWidget1.dart';
import 'package:MusicByMasses/fig2flutterapp/Genre_Selection/generated/FunkButton.dart';
import 'package:MusicByMasses/fig2flutterapp/Genre_Selection/generated/GeneratedGenreWidget.dart';
import 'package:MusicByMasses/fig2flutterapp/Genre_Selection/generated/LatinButton.dart';
import 'package:MusicByMasses/fig2flutterapp/Genre_Selection/generated/RnBButton.dart';
import 'package:MusicByMasses/fig2flutterapp/Genre_Selection/generated/PopButton.dart';
import 'package:MusicByMasses/fig2flutterapp/Genre_Selection/generated/RockButton.dart';
import 'package:MusicByMasses/fig2flutterapp/Genre_Selection/generated/RapButton.dart';
import 'package:MusicByMasses/fig2flutterapp/Genre_Selection/generated/SoulButton.dart';
import 'package:MusicByMasses/fig2flutterapp/Genre_Selection/generated/CountryButton.dart';
import 'package:page_transition/page_transition.dart';

/* Genre_Selection page */
class Genre_Selection extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Genre_Selection> {
  bool popCheck = false;
  bool rapCheck = false;
  bool EDMCheck = false;
  bool RnBCheck = false;
  bool CountryCheck = false;
  bool MetalCheck = false;
  bool RockCheck = false;
  bool IndieCheck = false;
  bool JazzCheck = false;
  bool SoulCheck = false;
  bool LatinCheck = false;
  bool FunkCheck = false;

  //PopButton pop = PopButton();
  @override
  void initState() {
    super.initState();
  }

  //Goes back to correct page
  Future<bool> _goBack() {
    Navigator.push(context, PageTransition(type: PageTransitionType.fade, duration: Duration(milliseconds: 100), child: Artist_Type()));
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
                //Background Color
                Container(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                //Skip button
                Positioned(
                  left: 287.0,
                  top: 56.0,
                  right: null,
                  bottom: null,
                  width: 86.0,
                  height: 30.0,
                  child: GeneratedSkipWidget1(),
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
                            child: GeneratedIcon1024x1024FullWidget6(),
                          ))
                    ]);
                  }),
                ),
                //Genre Title
                Positioned(
                  left: 34.0,
                  top: 213.0,
                  right: null,
                  bottom: null,
                  width: 97.0,
                  height: 27.0,
                  child: GeneratedGenreWidget(),
                ),
                //pop
                GestureDetector(
                  onTap: () {
                    popCheck = select(popCheck);
                  },
                  child: Stack(children: [
                    Positioned(
                      left: 34.0,
                      top: 263.0,
                      right: null,
                      bottom: null,
                      width: 92.00162506103516,
                      height: 31.399999618530273,
                      child: PopButton(popCheck),
                    ),
                  ]),
                ),
                //RnB
                GestureDetector(
                  onTap: () {
                    RnBCheck = select(RnBCheck);
                  },
                  child: Stack(children: [
                    Positioned(
                      left: 34.0,
                      top: 338.0,
                      right: null,
                      bottom: null,
                      width: 92.0,
                      height: 31.399444580078125,
                      child: RnBButton(RnBCheck),
                    ),
                  ]),
                ),
                //Rock
                GestureDetector(
                  onTap: () {
                    RockCheck = select(RockCheck);
                  },
                  child: Stack(children: [
                    Positioned(
                      left: 34.0,
                      top: 414.0,
                      right: null,
                      bottom: null,
                      width: 92.0,
                      height: 31.399444580078125,
                      child: RockButton(RockCheck),
                    ),
                  ]),
                ),
                //Soul
                GestureDetector(
                  onTap: () {
                    SoulCheck = select(SoulCheck);
                  },
                  child: Stack(children: [
                    Positioned(
                      left: 34.0,
                      top: 490.0,
                      right: null,
                      bottom: null,
                      width: 92.0,
                      height: 31.399444580078125,
                      child: SoulButton(SoulCheck),
                    ),
                  ]),
                ),
                //Rap
                GestureDetector(
                  onTap: () {
                    rapCheck = select(rapCheck);
                  },
                  child: Stack(children: [
                    Positioned(
                      left: 142.0,
                      top: 262.0,
                      right: null,
                      bottom: null,
                      width: 92.0,
                      height: 33.447235107421875,
                      child: RapButton(rapCheck),
                    ),
                  ]),
                ),
                //Country
                GestureDetector(
                  onTap: () {
                    CountryCheck = select(CountryCheck);
                  },
                  child: Stack(children: [
                    Positioned(
                      left: 142.0,
                      top: 338.0,
                      right: null,
                      bottom: null,
                      width: 92.0,
                      height: 33.447235107421875,
                      child: CountryButton(CountryCheck),
                    ),
                  ]),
                ),
                //Indie
                GestureDetector(
                  onTap: () {
                    IndieCheck = select(IndieCheck);
                  },
                  child: Stack(children: [
                    Positioned(
                      left: 142.0,
                      top: 414.0,
                      right: null,
                      bottom: null,
                      width: 92.0,
                      height: 33.447235107421875,
                      child: IndieButton(IndieCheck),
                    ),
                  ]),
                ),
                //Latin
                GestureDetector(
                  onTap: () {
                    LatinCheck = select(LatinCheck);
                  },
                  child: Stack(children: [
                    Positioned(
                      left: 142.0,
                      top: 490.0,
                      right: null,
                      bottom: null,
                      width: 92.0,
                      height: 33.447235107421875,
                      child: LatinButton(LatinCheck),
                    ),
                  ]),
                ),
                //EDM
                GestureDetector(
                  onTap: () {
                    EDMCheck = select(EDMCheck);
                  },
                  child: Stack(children: [
                    Positioned(
                      left: 250.0,
                      top: 262.0,
                      right: null,
                      bottom: null,
                      width: 92.0,
                      height: 31.399444580078125,
                      child: EDMButton(EDMCheck),
                    ),
                  ]),
                ),
                //Metal
                GestureDetector(
                  onTap: () {
                    MetalCheck = select(MetalCheck);
                  },
                  child: Stack(children: [
                    Positioned(
                      left: 250.0,
                      top: 338.0,
                      right: null,
                      bottom: null,
                      width: 92.0,
                      height: 31.399444580078125,
                      child: MetalButton(MetalCheck),
                    ),
                  ]),
                ),
                //Jazz
                GestureDetector(
                  onTap: () {
                    JazzCheck = select(JazzCheck);
                  },
                  child: Stack(children: [
                    Positioned(
                      left: 250.0,
                      top: 414.0,
                      right: null,
                      bottom: null,
                      width: 92.0,
                      height: 31.399444580078125,
                      child: JazzButton(JazzCheck),
                    ),
                  ]),
                ),
                //Funk
                GestureDetector(
                  onTap: () {
                    FunkCheck = select(FunkCheck);
                  },
                  child: Stack(children: [
                    Positioned(
                      left: 250.0,
                      top: 490.0,
                      right: null,
                      bottom: null,
                      width: 92.0,
                      height: 31.399444580078125,
                      child: FunkButton(FunkCheck),
                    ),
                  ]),
                ),
                //Save Button
                Positioned(
                  left: 34.0,
                  top: 655.0,
                  right: null,
                  bottom: null,
                  width: 308.0,
                  height: 52.0,
                  child: SaveButton(),
                )
              ]),
        ),
      ),
    );
  }

  //Changes state of button
  bool select(bool check) {
    setState(() {
      check = !check;
    });
    return check;
  }
}
