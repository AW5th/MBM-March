import 'package:flutter/material.dart';
import 'package:MusicByMasses/helpers/transform/transform.dart';
import 'package:page_transition/page_transition.dart';
import 'package:MusicByMasses/fig2flutterapp/Login_CreateAccount/Login_CreateAccount.dart';

/* LANDING PAGE */
class GeneratedLoadingPageWidget extends StatelessWidget {
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
                      constraints.maxWidth * 0.6666666666666666;

                  final double height =
                      constraints.maxHeight * 0.20739257511834205;

                  return Stack(children: [
                    TransformHelper.translate(
                        x: constraints.maxWidth * 0.168,
                        y: constraints.maxHeight * 0.3435960591133005,
                        z: 0,
                        child: Container(
                          width: width,
                          height: height,
                          child: GestureDetector(
                            onTap: () => Navigator.push(context, PageTransition(type: PageTransitionType.fade, duration: Duration(milliseconds: 100), child: Login_CreateAccount())),
                                //Navigator.push(context, PageTransition(type: PageTransitionType.fade, duration: Duration(milliseconds: 100), child: '/Login_CreateAccount'),
                            child: Container(
                              width: 250.0,
                              height: 168.40277099609375,
                              child: ClipRRect(
                                borderRadius: BorderRadius.zero,
                                child: Image.asset(
                                  "assets/images/3b1cb0210eac4e1c95cb95efbe5afeb7",
                                  color: null,
                                  fit: BoxFit.fill,
                                  width: 250.0,
                                  height: 168.40277099609375,
                                  colorBlendMode: BlendMode.dstATop,
                                ),
                              ),
                            ),
                          ),
                        ))
                  ]);
                }),
              )
            ]),
      ),
    ));
  }
}
