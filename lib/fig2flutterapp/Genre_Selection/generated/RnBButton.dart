import 'package:MusicByMasses/helpers/svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:MusicByMasses/fig2flutterapp/Button_Parts/GenreBoxOutline.dart';

/* rnb button  */
class RnBButton extends StatelessWidget {
  RnBButton(bool res){
    check = res;
  }
  bool check =  false;

  void setBool(bool checks){
    check = checks;
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
        fit: StackFit.expand,
        alignment: Alignment.center,
        overflow: Overflow.visible,
        children: [
          //outline of box
          GenreBoxOutline(check),
          //box text
          Positioned(
            left: 22.104297637939453,
            top: 7.453821182250977,
            right: null,
            bottom: null,
            width: 53.091758728027344,
            height: 20.09615421295166,
            child: Text(
              '''RnB''',
              overflow: TextOverflow.visible,
              textAlign: TextAlign.center,
              style: TextStyle(
                height: 0.9166667181481112,
                fontSize: 15.437185287475586,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400,

                /* letterSpacing: -0.26243215799331665, */
              ),
            ),
          )
        ]);
  }
}
