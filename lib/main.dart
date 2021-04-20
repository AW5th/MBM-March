import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:rflutter_alert/rflutter_alert.dart';



import 'amplifyconfiguration.dart';

import 'package:flutter_app_two/fig2flutterapp/loginPage/loginPage.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedloadingpagewidget/GeneratedLoadingPageWidget.dart';
import 'package:flutter_app_two/fig2flutterapp/Login_CreateAccount/Login_CreateAccount.dart';
import 'package:flutter_app_two/fig2flutterapp/registrationPage/registrationPage.dart';
import 'package:flutter_app_two/fig2flutterapp/Artist_Listener/Artist_Listener.dart';
import 'package:flutter_app_two/fig2flutterapp/Artist_Selected/Artist_Selected.dart';
import 'package:flutter_app_two/fig2flutterapp/Listener_Selected/Listener_Selected.dart';
import 'package:flutter_app_two/fig2flutterapp/Artist_Type/Artist_Type.dart';
import 'package:flutter_app_two/fig2flutterapp/registrationPage/registrationPage.dart';
import 'package:flutter_app_two/fig2flutterapp/Feed_Dashboard/Feed_Dashboard.dart';
import 'package:flutter_app_two/fig2flutterapp/Profile_Page/Profile_Page.dart';
import 'package:flutter_app_two/fig2flutterapp/View_Song_Share/View_Song_Share.dart';
import 'package:flutter_app_two/fig2flutterapp/View_Song/View_Song.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedarrowshort_upwidget/GeneratedArrowshort_upWidget.dart';
import 'package:flutter_app_two/fig2flutterapp/View_Song_MBM_Selected/View_Song_MBM_Selected.dart';
import 'package:flutter_app_two/fig2flutterapp/Messenger_Chat/Messenger_Chat.dart';
import 'package:flutter_app_two/fig2flutterapp/Messenger_Chat_Opened/Messenger_Chat_Opened.dart';
import 'package:flutter_app_two/fig2flutterapp/Profile/Profile.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedprofilemycontentwidget1/ProfileUploadSound.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedprofilemycontentwidget2/ProfileUploadCoverArt.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedprofileotherusercontentwidget/OtherUserProfile.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedprofilelikedwidget/ProfileMyLiked.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedprofileeditandsettingswidget/ProfileEditandSettings.dart';
import 'package:flutter_app_two/fig2flutterapp/generateddashboardzachwidget4/GeneratedDashboardZachWidget4.dart';
import 'fig2flutterapp/generateddashboardzachwidget5/GeneratedDashboardZachWidget5.dart';
import 'fig2flutterapp/Genre_Selection/Genre_Selection.dart';
import 'package:file_picker/file_picker.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music by Masses',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      initialRoute: '/GeneratedLoadingPageWidget',
      routes: {
        '/GeneratedLoadingPageWidget': (context) =>
            GeneratedLoadingPageWidget(),
        '/Login_CreateAccount': (context) =>
            Login_CreateAccount(),
        '/loginPage': (context) =>
            loginPage(),
        '/registrationPage': (context) =>
            registrationPage(),
        '/Artist_Listener': (context) =>
            Artist_Listener(),
        '/Artist_Selected': (context) =>
            Artist_Selected(),
        '/Listener_Selected': (context) =>
            Listener_Selected(),
        '/Artist_Type': (context) =>
            Artist_Type(),
        '/Genre_Selection': (context) =>
            Genre_Selection(),
        '/Feed_Dashboard': (context) =>
            Feed_Dashboard(),
        '/Profile_Page': (context) =>
            Profile_Page(),
        '/View_Song_Share': (context) =>
            View_Song_Share(),
        '/View_Song': (context) =>
            View_Song(),
        '/GeneratedArrowshort_upWidget': (context) =>
            GeneratedArrowshort_upWidget(),
        '/View_Song_MBM_Selected': (context) =>
            View_Song_MBM_Selected(),
        '/Messenger_Chat': (context) => Messenger_Chat(),
        '/Messenger_Chat_Opened': (context) =>
            Messenger_Chat_Opened(),
        '/Profile': (context) => Profile(),
        '/ProfileUploadSound': (context) => ProfileUploadSound(),
        '/ProfileUploadCoverArt': (context) => ProfileUploadCoverArt(),
        '/OtherUserProfile': (context) => OtherUserProfile(),
        '/ProfileMyLiked': (context) => ProfileMyLiked(),
        '/ProfileEditandSettings': (context) => ProfileEditandSettings(),
        '/GeneratedDashboardZachWidget4': (context) =>
            GeneratedDashboardZachWidget4(),
        '/GeneratedDashboardZachWidget5': (context) =>
            GeneratedDashboardZachWidget5(),
      },
    );
  }
}
