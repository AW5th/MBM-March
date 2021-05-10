import 'dart:io';
import 'package:flutter/material.dart';
import 'package:MusicByMasses/fig2flutterapp/Profile/Profile.dart';
import 'package:MusicByMasses/fig2flutterapp/generatedprofilemycontentwidget1/generated/GeneratedUploadSoundWidget.dart';
import 'package:MusicByMasses/fig2flutterapp/generatedprofilemycontentwidget1/generated/GeneratedHomeIndicatorWidget16.dart';
import 'package:MusicByMasses/fig2flutterapp/generatedprofilemycontentwidget1/generated/GeneratedGroup7Widget3.dart';
import 'package:MusicByMasses/fig2flutterapp/generatedprofilemycontentwidget1/generated/GeneratedGroup1483Widget1.dart';
import 'package:MusicByMasses/fig2flutterapp/generatedprofilemycontentwidget1/generated/GeneratedGroup5Widget2.dart';
import 'package:MusicByMasses/fig2flutterapp/generatedprofilemycontentwidget1/generated/GeneratedGroup6Widget3.dart';
import 'package:MusicByMasses/fig2flutterapp/generatedprofilemycontentwidget2/generated/UploadContentButton.dart';
import 'package:MusicByMasses/helpers/transform/transform.dart';
import 'package:MusicByMasses/fig2flutterapp/generatedprofilemycontentwidget1/generated/GeneratedTitleWidget9.dart';
import 'package:MusicByMasses/fig2flutterapp/generatedprofilemycontentwidget1/generated/GeneratedStatusBarWidget9.dart';
import 'package:MusicByMasses/fig2flutterapp/generatedprofilemycontentwidget1/generated/GeneratedEditeditWidget2.dart';
import 'package:MusicByMasses/fig2flutterapp/generatedprofilemycontentwidget1/generated/GeneratedIconDarkChevronWidget7.dart';
import 'package:MusicByMasses/fig2flutterapp/generatedprofilemycontentwidget1/generated/GeneratedLine18Widget1.dart';
import 'package:MusicByMasses/fig2flutterapp/generatedprofilemycontentwidget1/generated/GeneratedIcon1024x1024FullWidget16.dart';
import 'package:MusicByMasses/fig2flutterapp/generatedprofilemycontentwidget1/generated/GeneratedGroup2Widget1.dart';
import 'package:page_transition/page_transition.dart';
import 'package:file_picker/file_picker.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:MusicByMasses/amplifyconfiguration.dart';

import 'generated/GeneratedFilefolderWidget.dart';
import 'generated/GeneratedGroup1488Widget.dart';
import 'generated/GeneratedGroup1500Widget.dart';
import 'generated/GeneratedGroup1502Widget1.dart';
import 'generated/GeneratedGroup1503Widget1.dart';
import 'generated/GeneratedIntersectWidget45.dart';

/* Upload prompt  */
class ProfileUploadSound extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<ProfileUploadSound> {
  bool _isAmplifyConfigured = false;
  String _uploadFileResult = '';
  String _getUrlResult = '';
  String _removeResult = '';
  Amplify _amplify = new Amplify();


  //Pop up if upload messes up
  AlertDialog signUpError(BuildContext context, String error) {
    String messsage = error;
    print("ERROR: " + error);

    return AlertDialog(
      title: Text('Upload failed'),
      content: Text("Error: " + messsage),
      actions: [
        FlatButton(
          textColor: Color.fromARGB(255, 255, 121, 0),
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Close'),
        ),
      ],
    );
  }

  void popUp(String error) {
    showDialog<void>(
        context: context, builder: (context) => signUpError(context, error));
  }
  @override
  void initState() {
    super.initState();
    configureAmplify();
  }

  void configureAmplify() async {
    // First add plugins (Amplify native requirements)
    AmplifyStorageS3 storage = new AmplifyStorageS3();
    AmplifyAuthCognito auth = new AmplifyAuthCognito();
    _amplify.addPlugin(authPlugins: [auth], storagePlugins: [storage]);
    // Configure
    await _amplify.configure(amplifyconfig);

    setState(() {
      _isAmplifyConfigured = true;
    });
  }

  void _upload() async {
    try {
      print('In upload');
      File content = await FilePicker.getFile(type: FileType.any);
      content.existsSync();
      print("File picked");

      final key = DateTime.now().toString();

      print("Uploading to S3");
      UploadFileResult result = await Amplify.Storage.uploadFile(
          key: key,
          local: content
      );

      /*
      S3UploadFileOptions options = S3UploadFileOptions(
          accessLevel: StorageAccessLevel.guest, metadata: metadata);

      UploadFileResult result = await Amplify.Storage.uploadFile(
          key: key, local: local, options: options); */
      print("Setting state...");
      setState(() {
        _uploadFileResult = result.key;
      });
    } catch (e) {
      print('UploadFile Err: ' + e.toString());
      popUp(e.toString());
    }
  }

  void getUrl() async {}

  void _download() async {}
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
                          child: GeneratedIcon1024x1024FullWidget16(),
                        ))
                  ]);
                }),
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
                  onTap: () => Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.fade,
                          duration: Duration(milliseconds: 100),
                          child: Profile())),
                  //Navigator.push(context, PageTransition(type: PageTransitionType.fade, duration: Duration(milliseconds: 100), child: '/Profile'),
                  child: GeneratedEditeditWidget2(),
                ),
              ),
              //background stuff
              Positioned(
                left: 87.0,
                top: 116.0,
                right: null,
                bottom: null,
                width: 200.0,
                height: 200.0,
                child: GeneratedGroup2Widget1(),
              ),
              //back button
              Positioned(
                left: 12.0,
                top: 59.0,
                right: null,
                bottom: null,
                width: 11.9765625,
                height: 20.7890625,
                child: GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.fade,
                          duration: Duration(milliseconds: 100),
                          child: Profile())),
                  //Navigator.push(context, PageTransition(type: PageTransitionType.fade, duration: Duration(milliseconds: 100), child: '/Profile'),
                  child: GeneratedIconDarkChevronWidget7(),
                ),
              ),
              //Entire upload sound box
              Positioned(
                left: 3.0,
                top: 133.0,
                right: null,
                bottom: null,
                width: 375.0,
                height: 671.0,
                child: Container(
                  width: 375.0,
                  height: 671.0,
                  child: Stack(
                      fit: StackFit.expand,
                      alignment: Alignment.center,
                      overflow: Overflow.visible,
                      children: [
                        //Pop up body
                        Positioned(
                          left: 0.0,
                          top: 0.0,
                          right: null,
                          bottom: null,
                          width: 375.0,
                          height: 671.0,
                          child: GeneratedGroup1488Widget(),
                        ),
                        //Upload from microphone??
                        Positioned(
                          left: 39.0,
                          top: 313.0,
                          right: null,
                          bottom: null,
                          width: 296.0,
                          height: 74.0,
                          child: GeneratedGroup1500Widget(),
                        ),
                        //Google drive bar
                        Positioned(
                          left: 40.0,
                          top: 211.0,
                          right: null,
                          bottom: null,
                          width: 296.0,
                          height: 74.0,
                          child: GeneratedGroup1502Widget1(),
                        ),
                        //Dropbox bar
                        Positioned(
                          left: 41.0,
                          top: 109.0,
                          right: null,
                          bottom: null,
                          width: 296.0,
                          height: 74.0,
                          child: GeneratedGroup1503Widget1(),
                        ),
                        //Folder box
                         Positioned(
                            left: 38.0,
                            top: 415.0,
                            right: null,
                            bottom: null,
                            width: 296.0,
                            height: 74.0,
                            child: GestureDetector(
                              onTap: _upload,
                              child: Container(
                                width: 296.0,
                                height: 74.0,
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
                                        width: 296.0,
                                        height: 74.0,
                                        child: Container(
                                          width: 296.0,
                                          height: 74.0,
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
                                                  width: 296.0,
                                                  height: 74.0,
                                                  child: UploadBoxColors(),
                                                )
                                              ]),
                                        ),
                                      )
                                    ]),
                              ),
                            ),
                          ),

                        //Folder icon
                        Positioned(
                          left: 158.0,
                          top: 422.0,
                          right: null,
                          bottom: null,
                          width: 60.0,
                          height: 60.0,
                          child: GestureDetector(
                            onTap: _upload,
                              child: GeneratedFilefolderWidget()),
                        )
                      ]),
                ),
              ),
              //TExt
              Positioned(
                left: 34.0,
                top: 154.0,
                right: null,
                bottom: null,
                width: 226.0,
                height: 24.0,
                child: GeneratedUploadSoundWidget(),
              ),
              //Next - Upload Button
              Positioned(
                left: 36.0,
                top: 696.0,
                right: null,
                bottom: null,
                width: 308.0,
                height: 52.0,
                child: GeneratedGroup7Widget3(),
              )
            ]),
      ),
    ));
  }
}
