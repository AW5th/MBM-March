import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/material.dart';
import 'package:MusicByMasses/fig2flutterapp/Login_CreateAccount/Login_CreateAccount.dart';
import 'package:MusicByMasses/fig2flutterapp/Messenger_Chat/Messenger_Chat.dart';
import 'package:MusicByMasses/fig2flutterapp/Profile/Profile.dart';
import 'package:MusicByMasses/main.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:MusicByMasses/fig2flutterapp/Feed_Dashboard/generated/GeneratedGroup1503Widget.dart';
import 'package:MusicByMasses/fig2flutterapp/Feed_Dashboard/generated/GeneratedGroup1502Widget.dart';
import 'package:MusicByMasses/fig2flutterapp/Feed_Dashboard/generated/GeneratedEDMWidget1.dart';
import 'package:MusicByMasses/fig2flutterapp/Feed_Dashboard/generated/GeneratedHomeIndicatorWidget.dart';
import 'package:MusicByMasses/fig2flutterapp/Feed_Dashboard/generated/GeneratedRapWidget1.dart';
import 'package:MusicByMasses/fig2flutterapp/Feed_Dashboard/generated/GeneratedDirectionWidget.dart';
import 'package:MusicByMasses/fig2flutterapp/Feed_Dashboard/generated/GeneratedGroup1532Widget.dart';
import 'package:MusicByMasses/helpers/transform/transform.dart';
import 'package:MusicByMasses/fig2flutterapp/Feed_Dashboard/generated/GeneratedGroup1504Widget.dart';
import 'package:MusicByMasses/fig2flutterapp/Feed_Dashboard/generated/GeneratedGroup1Widget.dart';
import 'package:MusicByMasses/fig2flutterapp/Feed_Dashboard/generated/GeneratedStatusBarWidget1.dart';
import 'package:MusicByMasses/fig2flutterapp/Feed_Dashboard/generated/GeneratedIcon1024x1024FullWidget7.dart';
import 'package:MusicByMasses/fig2flutterapp/Feed_Dashboard/generated/GeneratedPopWidget1.dart';
import 'package:MusicByMasses/fig2flutterapp/Feed_Dashboard/generated/GeneratedHeaderWidget.dart';
import 'package:page_transition/page_transition.dart';

/* Feed dashboard */

class Feed_Dashboard extends StatefulWidget {
  @override
  MyApp createState() => MyApp();
}

class MyApp extends State<Feed_Dashboard> {
  bool isSignedIn = true;

  void _signOut() async {
    bool isSignOutComplete = false;
    try {
      await Amplify.Auth.signOut();
      await Amplify.DataStore.clear();
      isSignedIn = false;
    } on AuthException catch (e) {
      print(e);
    }
    print("SIGN OUT RESULT: " + (isSignedIn ? "Failed to sign out" : "Sign out successfully"));
  }

  AlertDialog dialog(BuildContext context) => AlertDialog(
        title: Text('Are you sure you want to log out?'),
        content: Text("You'll be logged out and taken back to the home page"),
        actions: [
          FlatButton(
            textColor: Color.fromARGB(255, 255, 121, 0),
            onPressed: () {
              _signOut();
              Navigator.push(context, PageTransition(type: PageTransitionType.fade, duration: Duration(milliseconds: 100), child: Login_CreateAccount()));
            },
            child: Text('Log out'),
          ),
          FlatButton(
            textColor: Color.fromARGB(255, 255, 121, 0),
            onPressed: () { Navigator.pop(context); },
            child: Text('Cancel'),
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
          child: ClipRRect(
        borderRadius: BorderRadius.zero,
        child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          return
              //Creates a box in which a single widget can be scrolled.
              SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
                width: 381.41380500793457,
                //how long it scrolls
                height: 3000,
                child: Stack(children: [
                  Container(
                      height: constraints.maxHeight,
                      child: Container(
                        width: 375.0,
                        height: 812.0,
                        child: Stack(
                            fit: StackFit.expand,
                            alignment: Alignment.center,
                            overflow: Overflow.visible,
                            children: [
                              //Messenger_Chat button
                              Positioned(
                                left: 0.0,
                                top: 0.0,
                                right: 0.0,
                                bottom: null,
                                width: null,
                                height: 44.0,
                                child: GestureDetector(
                                  onTap: () => Navigator.push(context, PageTransition(type: PageTransitionType.fade, duration: Duration(milliseconds: 100), child: Messenger_Chat())),
                                      //Navigator.push(context, PageTransition(type: PageTransitionType.fade, duration: Duration(milliseconds: 100), child: '/Messenger_Chat'),
                                  child: GeneratedStatusBarWidget1(),
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
                                    (BuildContext context,
                                        BoxConstraints constraints) {
                                  final double width = constraints.maxWidth *
                                      0.19466666666666665;

                                  final double height = constraints.maxHeight *
                                      0.054187192118226604;

                                  return Stack(children: [
                                    TransformHelper.translate(
                                        x: constraints.maxWidth *
                                            0.4026666666666667,
                                        y: constraints.maxHeight *
                                            0.06280788177339902,
                                        z: 0,
                                        child: Container(
                                          width: width,
                                          height: height,
                                          child:
                                              GeneratedIcon1024x1024FullWidget7(),
                                        ))
                                  ]);
                                }),
                              ),
                              //Messaging button
                              Positioned(
                                left: 355.2069091796875,
                                top: 61.0,
                                right: null,
                                bottom: null,
                                width: 26.20689582824707,
                                height: 24.27597999572754,
                                child: GeneratedDirectionWidget(),
                              ),
                              //Competitions box
                              Positioned(
                                left: 22.0,
                                top: 189.0,
                                right: null,
                                bottom: null,
                                width: 332.0,
                                height: 140.0,
                                child: GeneratedGroup1532Widget(),
                              ),
                              //Profile button
                              Positioned(
                                left: 25.0,
                                top: 51.0,
                                right: null,
                                bottom: null,
                                width: 50.0,
                                height: 50.0,
                                child: GestureDetector(
                                  onTap: () =>Navigator.push(context, PageTransition(type: PageTransitionType.fade, duration: Duration(milliseconds: 100), child: Profile())),
                                      //Navigator.push(context, PageTransition(type: PageTransitionType.fade, duration: Duration(milliseconds: 100), child: '/Profile'),
                                  child: GeneratedGroup1Widget(),
                                ),
                              ),
                              //EDM text
                              Positioned(
                                left: 25.0,
                                top: 339.0,
                                right: null,
                                bottom: null,
                                width: 197.0,
                                height: 33.0,
                                child: GeneratedEDMWidget1(),
                              ),
                              //Competitions text
                              Positioned(
                                left: 25.0,
                                top: null,
                                right: null,
                                bottom: null,
                                width: 269.0,
                                height: 29.0,
                                child: TransformHelper.translate(
                                    x: 0.00,
                                    y: -248.50,
                                    z: 0,
                                    child: GeneratedHeaderWidget()),
                              ),
                              Positioned(
                                left: 29.0,
                                top: 558.0,
                                right: null,
                                bottom: null,
                                width: 197.0,
                                height: 33.0,
                                child: GeneratedRapWidget1(),
                              ),
                              Positioned(
                                left: 29.0,
                                top: 751.0,
                                right: null,
                                bottom: null,
                                width: 197.0,
                                height: 33.0,
                                child: GeneratedPopWidget1(),
                              ),
                              //Music Preview: EDM
                              Positioned(
                                left: 41.0,
                                top: 387.0,
                                right: null,
                                bottom: null,
                                width: 293.0,
                                height: 151.0,
                                child: GeneratedGroup1502Widget(),
                              ),
                              //Music Preview: Rap
                              Positioned(
                                left: 43.0,
                                top: 593.0,
                                right: null,
                                bottom: null,
                                width: 293.0,
                                height: 151.0,
                                child: GeneratedGroup1503Widget(),
                              ),
                              //Music Preview: Pop
                              Positioned(
                                left: 43.0,
                                top: 782.0,
                                right: null,
                                bottom: null,
                                width: 293.0,
                                height: 151.0,
                                child: GeneratedGroup1504Widget(),
                              )
                            ]),
                      ))
                ])),
          );
        }),
      )),
    );
  }
}
