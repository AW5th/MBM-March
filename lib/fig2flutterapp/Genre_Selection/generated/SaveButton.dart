import 'package:MusicByMasses/helpers/svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:MusicByMasses/fig2flutterapp/Feed_Dashboard/Feed_Dashboard.dart';
import 'package:MusicByMasses/fig2flutterapp/Genre_Selection/generated/SaveButton.dart';
import 'package:page_transition/page_transition.dart';

/* Save Button  */
class SaveButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(context, PageTransition(type: PageTransitionType.fade, duration: Duration(milliseconds: 100), child: Feed_Dashboard())),
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
                          child: Container(
                            width: 308.0,
                            height: 52.0,
                            decoration: BoxDecoration(

                            ),
                            //Save button colors
                            child: SvgWidget(painters: [
                              SvgPathPainter.fill()
                                ..addPath(
                                    'M0 20C0 8.9543 8.95431 0 20 0L288 0C299.046 0 308 8.95431 308 20L308 32C308 43.0457 299.046 52 288 52L20 52C8.95431 52 0 43.0457 0 32L0 20Z')
                                ..setLinearGradient(
                                  startX: -7.000000321335717,
                                  startY: -189.50000486899572,
                                  endX: 328.9999846488398,
                                  endY: -192.00000552242707,
                                  colors: [
                                    Color.fromARGB(255, 255, 213, 106),
                                    Color.fromARGB(255, 255, 122, 0)
                                  ],
                                  colorStops: [0.0, 1.0],
                                ),
                            ]),
                          ),
                        )
                      ]),
                ),
              ),
              Positioned(
                left: 73.0,
                top: 14.0,
                right: null,
                bottom: null,
                width: 166.0,
                height: 30.0,
                child: Text(
                  'Save',
                  overflow: TextOverflow.visible,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    height: 0.9166666666666666,
                    fontSize: 24.0,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 255, 255, 255),

                    /* letterSpacing: -0.40799999237060547, */
                  ),
                ),
              )
            ]),
      ),
    );
  }
}
