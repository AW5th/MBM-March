import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:rflutter_alert/rflutter_alert.dart';



import 'amplifyconfiguration.dart';

import 'package:flutter_app_two/fig2flutterapp/loginPage/loginPage.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedloadingpagewidget/GeneratedLoadingPageWidget.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedsignupsigninpagewidget/GeneratedSignUpSignInpageWidget.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedsignupsigninpagewidget1/registrationPage.dart';
import 'package:flutter_app_two/fig2flutterapp/Artist_Listener/Artist_Listener.dart';
import 'package:flutter_app_two/fig2flutterapp/Artist_Selected/Artist_Selected.dart';
import 'package:flutter_app_two/fig2flutterapp/Listener_Selected/Listener_Selected.dart';
import 'package:flutter_app_two/fig2flutterapp/Artist_Type/Artist_Type.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedsignupsigninpagewidget5/GeneratedSignUpSignInpageWidget5.dart';
import 'package:flutter_app_two/fig2flutterapp/Feed_Dashboard/Feed_Dashboard.dart';
import 'package:flutter_app_two/fig2flutterapp/Profile_Page/Profile_Page.dart';
import 'package:flutter_app_two/fig2flutterapp/generateddashboardzachwidget1/GeneratedDashboardZachWidget1.dart';
import 'package:flutter_app_two/fig2flutterapp/generateddashboardzachwidget2/GeneratedDashboardZachWidget2.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedarrowshort_upwidget/GeneratedArrowshort_upWidget.dart';
import 'package:flutter_app_two/fig2flutterapp/generateddashboardzachwidget3/GeneratedDashboardZachWidget3.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedmessagingwidget/GeneratedMessagingWidget.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedmessagingzachwidget/GeneratedMessagingZachWidget.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedprofilemycontentwidget/ProfileMain.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedprofilemycontentwidget1/ProfileUploadSound.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedprofilemycontentwidget2/ProfileUploadCoverArt.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedprofileotherusercontentwidget/OtherUserProfile.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedprofilelikedwidget/ProfileMyLiked.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedprofileeditandsettingswidget/ProfileEditandSettings.dart';
import 'package:flutter_app_two/fig2flutterapp/generateddashboardzachwidget4/GeneratedDashboardZachWidget4.dart';
import 'fig2flutterapp/generateddashboardzachwidget5/GeneratedDashboardZachWidget5.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      initialRoute: '/GeneratedLoadingPageWidget',
      routes: {
        '/GeneratedLoadingPageWidget': (context) =>
            GeneratedLoadingPageWidget(),
        '/GeneratedSignUpSignInpageWidget': (context) =>
            GeneratedSignUpSignInpageWidget(),
        '/loginPage': (context) =>
            loginPage(),
        '/GeneratedSignUpSignInpageWidget1': (context) =>
            GeneratedSignUpSignInpageWidget1(),
        '/Artist_Listener': (context) =>
            Artist_Listener(),
        '/Artist_Selected': (context) =>
            Artist_Selected(),
        '/Listener_Selected': (context) =>
            Listener_Selected(),
        '/Artist_Type': (context) =>
            Artist_Type(),
        '/GeneratedSignUpSignInpageWidget5': (context) =>
            GeneratedSignUpSignInpageWidget5(),
        '/Feed_Dashboard': (context) =>
            Feed_Dashboard(),
        '/Profile_Page': (context) =>
            Profile_Page(),
        '/GeneratedDashboardZachWidget1': (context) =>
            GeneratedDashboardZachWidget1(),
        '/GeneratedDashboardZachWidget2': (context) =>
            GeneratedDashboardZachWidget2(),
        '/GeneratedArrowshort_upWidget': (context) =>
            GeneratedArrowshort_upWidget(),
        '/GeneratedDashboardZachWidget3': (context) =>
            GeneratedDashboardZachWidget3(),
        '/GeneratedMessagingWidget': (context) => GeneratedMessagingWidget(),
        '/GeneratedMessagingZachWidget': (context) =>
            GeneratedMessagingZachWidget(),
        '/ProfileMain': (context) => ProfileMain(),
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
