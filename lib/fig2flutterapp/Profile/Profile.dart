import 'package:flutter/material.dart';
import 'package:MusicByMasses/fig2flutterapp/Feed_Dashboard/Feed_Dashboard.dart';
import 'package:MusicByMasses/fig2flutterapp/Profile/generated/ListenCount.dart';
import 'package:MusicByMasses/fig2flutterapp/generatedprofileeditandsettingswidget/ProfileEditandSettings.dart';
import 'package:MusicByMasses/fig2flutterapp/generatedprofilemycontentwidget1/ProfileUploadSound.dart';
import 'package:MusicByMasses/fig2flutterapp/generatedprofilemycontentwidget2/generated/UploadContentButton.dart';
import 'package:MusicByMasses/helpers/transform/transform.dart';
import 'package:MusicByMasses/fig2flutterapp/Profile/generated/UserInfo.dart';
import 'package:MusicByMasses/fig2flutterapp/Profile/generated/GeneratedGroup5Widget1.dart';
import 'package:MusicByMasses/fig2flutterapp/Profile/generated/EditButtonOnProfile.dart';
import 'package:MusicByMasses/fig2flutterapp/Profile/generated/GeneratedStatusBarWidget8.dart';
import 'package:MusicByMasses/fig2flutterapp/Profile/generated/MusicIcon.dart';
import 'package:MusicByMasses/fig2flutterapp/Profile/generated/GroupContainingContentOnProfile.dart';
import 'package:MusicByMasses/fig2flutterapp/Profile/generated/GeneratedIconLightchevronleftWidget6.dart';
import 'package:page_transition/page_transition.dart';

import 'generated/UserInfo.dart';

/* Profile- My content  */
class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,
            overflow: Overflow.visible,
            children: [
              //page background color
              Container(
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              //edit button
              Positioned(
                left: 335.0,
                top: 61.0,
                right: null,
                bottom: null,
                width: 24.0,
                height: 24.0,
                child: GestureDetector(
                  onTap: () => Navigator.push(context, PageTransition(type: PageTransitionType.fade, duration: Duration(milliseconds: 100), child: ProfileEditandSettings())),
                      //Navigator.push(context, PageTransition(type: PageTransitionType.fade, duration: Duration(milliseconds: 100), child: '/ProfileEditandSettings'),
                  child: EditButtonOnProfile(),
                ),
              ),
              //backbutton
              Positioned(
                left: 12.0,
                top: 59.0,
                right: null,
                bottom: null,
                width: 11.9765625,
                height: 20.7890625,
                child: GestureDetector(
                  onTap: () => Navigator.push(context, PageTransition(type: PageTransitionType.fade, duration: Duration(milliseconds: 100), child: Feed_Dashboard())),
                      //Navigator.push(context, PageTransition(type: PageTransitionType.fade, duration: Duration(milliseconds: 100), child: '/Feed_Dashboard'),
                  child: Opacity(
                    opacity: 0.800000011920929,
                    child: Container(
                      width: 11.9765625,
                      height: 20.7890625,
                      child: Stack(
                          fit: StackFit.expand,
                          alignment: Alignment.center,
                          overflow: Overflow.visible,
                          children: [
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
                                final double width = constraints.maxWidth;

                                final double height = constraints.maxHeight;

                                return Stack(children: [
                                  TransformHelper.translate(
                                      x: 0,
                                      y: 0,
                                      z: 0,
                                      child: Container(
                                        width: width,
                                        height: height,
                                        child:
                                            GeneratedIconLightchevronleftWidget6(),
                                      ))
                                ]);
                              }),
                            )
                          ]),
                    ),
                  ),
                ),
              ),
              //Upload button
              Positioned(
                left: 33.0,
                top: 704.0,
                right: null,
                bottom: null,
                width: 308.0,
                height: 52.0,
                child: GestureDetector(
                  onTap: () => Navigator.push(context, PageTransition(type: PageTransitionType.fade, duration: Duration(milliseconds: 100), child: ProfileUploadSound())),
                  //Navigator.push(context, PageTransition(type: PageTransitionType.fade, duration: Duration(milliseconds: 100), child: '/ProfileUploadSound'),
                  child: UploadContentButton(),
                ),
              ),
              //All the content
              Positioned(
                left: 1.0,
                top: 395.0,
                right: null,
                bottom: null,
                width: 375.0,
                height: 278.0,
                child: GroupContainingContentOnProfile(),
              ),
              //icon
              Positioned(
                left: 0.0,
                top: 0.0,
                right: 0.0,
                bottom: 0.0,
                width: null,
                height: null,
                child: LayoutBuilder(builder:
                    (BuildContext context, BoxConstraints constraints) {
                  final double width = constraints.maxWidth * 0.064;

                  final double height =
                      constraints.maxHeight * 0.029556650246305417;

                  return Stack(children: [
                    TransformHelper.translate(
                        x: constraints.maxWidth * 0.8373333333333334,
                        y: constraints.maxHeight * 0.31157635467980294,
                        z: 0,
                        child: Container(
                          width: width,
                          height: height,
                          child: MusicIcon(),
                        ))
                  ]);
                }),
              ),
              //User info - Data store implementation!
              //TODO - Datastore implementation
              Positioned(
                left: 51.0,
                top: 59.0,
                right: null,
                bottom: null,
                width: 277.0,
                height: 334.0,
                child: UserInfo(),
              ),
              //Listen count
              Positioned(
                left: 57.0,
                top: null,
                right: null,
                bottom: null,
                width: 36.0,
                height: 27.0,
                child: TransformHelper.translate(
                    x: 0.00, y: -91.50, z: 0, child: ListenCount()),
              )
            ]),

    );
  }
}
