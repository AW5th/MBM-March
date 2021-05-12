import 'package:flutter/material.dart';
import 'package:MusicByMasses/fig2flutterapp/Listener_Selected/generated/GeneratedIcon1024x1024FullWidget4.dart';
import 'package:MusicByMasses/fig2flutterapp/Listener_Selected/generated/GeneratedGroup8Widget1.dart';
import 'package:MusicByMasses/helpers/transform/transform.dart';
import 'package:MusicByMasses/fig2flutterapp/Listener_Selected/generated/GeneratedGroup9Widget1.dart';
import 'package:MusicByMasses/fig2flutterapp/Listener_Selected/generated/GeneratedGroup7Widget2.dart';
import 'package:MusicByMasses/fig2flutterapp/Artist_Listener/generated/GeneratedIamaanWidget.dart';
import 'package:MusicByMasses/helpers/svg/svg.dart';
import 'package:MusicByMasses/fig2flutterapp/Artist_Listener/generated/Listener_Button.dart';
/* Artist Selected  */
class Artist_Selected extends StatefulWidget {
  @override
  _ArtistSelectedState createState() => _ArtistSelectedState();
}

class _ArtistSelectedState extends State<Artist_Selected> {
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
                            child: GeneratedIcon1024x1024FullWidget4(),
                          ))
                    ]);
                  }),
                ),
                //I am text
                Positioned(
                  left: 34.0,
                  top: 154.0,
                  right: null,
                  bottom: null,
                  width: 149.0,
                  height: 24.0,
                  child: GeneratedIamaanWidget(),
                ),
                //Artist Button
                Positioned(
                  left: 88.0,
                  top: 219.0,
                  right: null,
                  bottom: null,
                  width: 199.0,
                  height: 52.0,
                  child: Stack(
                      fit: StackFit.expand,
                      alignment: Alignment.center,
                      overflow: Overflow.visible,
                      children: [
                        //outer box
                        SvgWidget(painters: [
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
                              ..addClipPath(
                                  'M0 20C0 8.9543 8.95431 0 20 0L179 0C190.046 0 199 8.95431 199 20L199 32C199 43.0457 190.046 52 179 52L20 52C8.9543 52 0 43.0457 0 32L0 20Z')
                              //outline color
                              ..setLinearGradient(
                                startX: 38.621083879252254,
                                startY: 24.95999210133363,
                                endX: 170.62108451184017,
                                endY: 24.959995977788328,
                                colors: [
                                  Color.fromARGB(255, 255, 213, 106),
                                  Color.fromARGB(255, 255, 121, 0)
                                ],
                                colorStops: [0.0, 1.0],
                              ),
                          ]),
                        //Text
                        Positioned(
                          left: 47.81171417236328,
                          top: 14.0,
                          right: null,
                          bottom: null,
                          width: 109.0227279663086,
                          height: 30.0,
                          child: Text(
                            '''Artist''',
                            overflow: TextOverflow.visible,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              height: 0.9166666666666666,
                              fontSize: 24.0,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              //text color
                              color: Color.fromARGB(255, 0, 0, 0),

                              /* letterSpacing: -0.40799999237060547, */
                            ),
                          ),
                        )
                      ]),
                ),
                //Listener button
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
                  child: GeneratedGroup7Widget2(),
                )
              ]),
        ),
      )),
    );
  }
}
