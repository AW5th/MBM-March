import 'package:MusicByMasses/helpers/svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:MusicByMasses/fig2flutterapp/Listener_Selected/Listener_Selected.dart';
import 'package:page_transition/page_transition.dart';

/* Listener button  */
class Listener_Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(context, PageTransition(type: PageTransitionType.fade, duration: Duration(milliseconds: 100), child: Listener_Selected())),
      child: Container(
        width: 199.0,
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
                width: 199.0,
                height: 52.0,
                child: SvgWidget(painters: [
                              SvgPathPainter.fill()
                                ..addPath(
                                    'M0 20C0 8.9543 8.95431 0 20 0L179 0C190.046 0 199 8.95431 199 20L199 32C199 43.0457 190.046 52 179 52L20 52C8.9543 52 0 43.0457 0 32L0 20Z')
                                ..color = Color.fromARGB(255, 255, 255, 255),
                              SvgPathPainter.stroke(
                                3.0,
                                strokeJoin: StrokeJoin.miter,
                              )
                                ..addPath(
                                    'M20 3L179 3L179 -3L20 -3L20 3ZM196 20L196 32L202 32L202 20L196 20ZM179 49L20 49L20 55L179 55L179 49ZM3 32L3 20L-3 20L-3 32L3 32ZM20 49C10.6112 49 3 41.3888 3 32L-3 32C-3 44.7025 7.29745 55 20 55L20 49ZM196 32C196 41.3888 188.389 49 179 49L179 55C191.703 55 202 44.7025 202 32L196 32ZM179 3C188.389 3 196 10.6112 196 20L202 20C202 7.29745 191.703 -3 179 -3L179 3ZM20 -3C7.29745 -3 -3 7.29745 -3 20L3 20C3 10.6112 10.6112 3 20 3L20 -3Z')
                                ..color = Color.fromARGB(255, 150, 150, 150)
                                ..addClipPath(
                                    'M0 20C0 8.9543 8.95431 0 20 0L179 0C190.046 0 199 8.95431 199 20L199 32C199 43.0457 190.046 52 179 52L20 52C8.9543 52 0 43.0457 0 32L0 20Z'),
                            ]),
              ),
              Positioned(
                left: 47.81171417236328,
                top: 14.0,
                right: null,
                bottom: null,
                width: 109.0227279663086,
                height: 30.0,
                child: Text(
                  '''Listener''',
                  overflow: TextOverflow.visible,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    height: 0.9166666666666666,
                    fontSize: 24.0,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 150, 150, 150),

                    /* letterSpacing: -0.40799999237060547, */
                  ),
                ),
              )
            ]),
      ),
    );
  }
}
