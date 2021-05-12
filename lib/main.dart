import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/material.dart';
import 'package:MusicByMasses/fig2flutterapp/Testing_Page2/Testing_Page2.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'amplifyconfiguration.dart';

import 'package:MusicByMasses/fig2flutterapp/loginPage/loginPage.dart';
import 'package:MusicByMasses/fig2flutterapp/generatedloadingpagewidget/GeneratedLoadingPageWidget.dart';
import 'package:MusicByMasses/fig2flutterapp/Login_CreateAccount/Login_CreateAccount.dart';
import 'package:MusicByMasses/fig2flutterapp/registrationPage/registrationPage.dart';
import 'package:MusicByMasses/fig2flutterapp/Artist_Listener/Artist_Listener.dart';
import 'package:MusicByMasses/fig2flutterapp/Artist_Selected/Artist_Selected.dart';
import 'package:MusicByMasses/fig2flutterapp/Listener_Selected/Listener_Selected.dart';
import 'package:MusicByMasses/fig2flutterapp/Artist_Type/Artist_Type.dart';
import 'package:MusicByMasses/fig2flutterapp/Feed_Dashboard/Feed_Dashboard.dart';
import 'package:MusicByMasses/fig2flutterapp/Profile_Page/Profile_Page.dart';
import 'package:MusicByMasses/fig2flutterapp/View_Song_Share/View_Song_Share.dart';
import 'package:MusicByMasses/fig2flutterapp/View_Song/View_Song.dart';
import 'package:MusicByMasses/fig2flutterapp/generatedarrowshort_upwidget/GeneratedArrowshort_upWidget.dart';
import 'package:MusicByMasses/fig2flutterapp/View_Song_MBM_Selected/View_Song_MBM_Selected.dart';
import 'package:MusicByMasses/fig2flutterapp/Messenger_Chat/Messenger_Chat.dart';
import 'package:MusicByMasses/fig2flutterapp/Messenger_Chat_Opened/Messenger_Chat_Opened.dart';
import 'package:MusicByMasses/fig2flutterapp/Profile/Profile.dart';
import 'package:MusicByMasses/fig2flutterapp/generatedprofilemycontentwidget1/ProfileUploadSound.dart';
import 'package:MusicByMasses/fig2flutterapp/generatedprofilemycontentwidget2/ProfileUploadCoverArt.dart';
import 'package:MusicByMasses/fig2flutterapp/OtherUserProfile/OtherUserProfile.dart';
import 'package:MusicByMasses/fig2flutterapp/generatedprofilelikedwidget/ProfileMyLiked.dart';
import 'package:MusicByMasses/fig2flutterapp/generatedprofileeditandsettingswidget/ProfileEditandSettings.dart';
import 'package:MusicByMasses/fig2flutterapp/View_Song_3/View_Song_3.dart';
import 'fig2flutterapp/Select_Song_Competition/Select_Song_Competition.dart';
import 'fig2flutterapp/Genre_Selection/Genre_Selection.dart';
import 'fig2flutterapp/Testing_Page/Testing_Page.dart';
import 'fig2flutterapp/Testing_Page2/Testing_Page2.dart';
import 'package:file_picker/file_picker.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';
import 'package:flutter/material.dart';
import 'package:MusicByMasses/models/ModelProvider.dart';
import 'package:amplify_core/amplify_core.dart';
import 'amplifyconfiguration.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:MusicByMasses/helpers/transform/transform.dart';
import 'package:MusicByMasses/fig2flutterapp/Testing_Page/generated/GeneratedIcon1024x1024FullWidget2.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  bool isSignedIn = false;
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music by Masses',
      theme: ThemeData(primarySwatch: Colors.orange,),
      initialRoute: '/GeneratedLoadingPageWidget',
      routes: {
        '/Testing_Page': (context) => Testing_Page(),
        '/Testing_Page2': (context) => Testing_Page2(),
        '/GeneratedLoadingPageWidget': (context) =>
            GeneratedLoadingPageWidget(),
        '/Login_CreateAccount': (context) => Login_CreateAccount(),
        '/loginPage': (context) => loginPage(),
        '/registrationPage': (context) => registrationPage(),
        '/Artist_Listener': (context) => Artist_Listener(),
        '/Artist_Selected': (context) => Artist_Selected(),
        '/Listener_Selected': (context) => Listener_Selected(),
        '/Artist_Type': (context) => Artist_Type(),
        '/Genre_Selection': (context) => Genre_Selection(),
        '/Feed_Dashboard': (context) => Feed_Dashboard(),
        '/Profile_Page': (context) => Profile_Page(),
        '/View_Song_Share': (context) => View_Song_Share(),
        '/View_Song': (context) => View_Song(),
        '/GeneratedArrowshort_upWidget': (context) =>
            GeneratedArrowshort_upWidget(),
        '/View_Song_MBM_Selected': (context) => View_Song_MBM_Selected(),
        '/Messenger_Chat': (context) => Messenger_Chat(),
        '/Messenger_Chat_Opened': (context) => Messenger_Chat_Opened(),
        '/Profile': (context) => Profile(),
        '/ProfileUploadSound': (context) => ProfileUploadSound(),
        '/ProfileUploadCoverArt': (context) => ProfileUploadCoverArt(),
        '/OtherUserProfile': (context) => OtherUserProfile(),
        '/ProfileMyLiked': (context) => ProfileMyLiked(),
        '/ProfileEditandSettings': (context) => ProfileEditandSettings(),
        '/View_Song_3': (context) =>
            View_Song_3(),
        '/Select_Song_Competition': (context) =>
            Select_Song_Competition(),
      },
    );
  }
}
