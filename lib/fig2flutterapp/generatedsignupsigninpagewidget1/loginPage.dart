import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_core/amplify_core.dart';
import 'amplifyconfiguration.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'package:flutter/material.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedsignupsigninpagewidget1/generated/GeneratedEmailAddressWidget.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedsignupsigninpagewidget1/generated/GeneratedFrame1452Widget.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedsignupsigninpagewidget1/generated/GeneratedLine26Widget.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedsignupsigninpagewidget1/generated/GeneratedPasswordWidget.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedsignupsigninpagewidget1/generated/GeneratedUserNameWidget.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedsignupsigninpagewidget1/generated/GeneratedGroup7Widget.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedsignupsigninpagewidget1/generated/GeneratedLine27Widget.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedsignupsigninpagewidget1/generated/GeneratedSignUpWidget.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedsignupsigninpagewidget1/generated/GeneratedConfirmPasswordWidget.dart';
import 'package:flutter_app_two/helpers/transform/transform.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedsignupsigninpagewidget1/generated/GeneratedLine25Widget.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedsignupsigninpagewidget1/generated/GeneratedLine24Widget.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedsignupsigninpagewidget1/generated/GeneratedEmailAddressWidget1.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedsignupsigninpagewidget1/generated/GeneratedIcon1024x1024FullWidget2.dart';
//import 'package:flutter_app_two/fig2flutterapp/generatedsignupsigninpagewidget1/generated/GeneratedGroup7Widget.dart'
/* Registration   Page  */

void main() {
  runApp(MaterialApp(
    home: GeneratedSignUpSignInpageWidget1(),
  ));
}

class GeneratedSignUpSignInpageWidget1 extends StatefulWidget {
  @override
  MyApp createState() => MyApp();
}


class MyApp extends State<GeneratedSignUpSignInpageWidget1>  {
  // gives our app awareness about whether we are succesfully connected to the cloud
  bool _amplifyConfigured = false;
  // Instantiate Amplify
  Amplify amplifyInstance = Amplify();
  // controllers for text input
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isSignUpComplete = false;
  bool isSignedIn = false;
  @override
  void initState() {
    super.initState();
    // amplify is configured on startup
    _configureAmplify();
  }
  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
  void _configureAmplify() async {
    if (!mounted) return;
    // add all of the plugins we are currently using
    // in our case... just one - Auth
    AmplifyAuthCognito authPlugin = AmplifyAuthCognito();
    amplifyInstance.addPlugin(authPlugins: [authPlugin]);
    await amplifyInstance.configure(amplifyconfig);
    try {
      setState(() {
        _amplifyConfigured = true;
      });
    } catch (e) {
      print(e);
    }
  }
  Future<String> _registerUser(LoginData data) async {
    try {
      Map<String, dynamic> userAttributes = {
        "email": emailController.text,
      };
      SignUpResult res = await Amplify.Auth.signUp(
          username: data.name,
          password: data.password,
          options: CognitoSignUpOptions(userAttributes: userAttributes)
      );
      setState(() {
        isSignUpComplete = res.isSignUpComplete;
        print("Sign up: " + (isSignUpComplete ? "Complete" : "Not Complete"));
      });
      print("Signing in...");
      if(isSignUpComplete) {
              print("You signed in!");
             Alert(
            context: context,
            type: AlertType.success,
            title: "You've succesfully signed up, check you're email for confirmtion code.",
            buttons: [
              DialogButton(
                child: Text(
                  "Close",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                onPressed: () => Navigator.pushNamed(context,'/loginPage'),
                width: 120,
              )
            ],).show();
        Navigator.pushNamed(context, '/loginPage');
      }
    } on AuthError catch (e) {
      print(e);
      return "Register Error: " + e.toString();
    }
  }

  Future<String> _signIn(LoginData data) async {
    try {
      SignInResult res = await Amplify.Auth.signIn(
        username: data.name,
        password: data.password,
      );
      setState(() {
        isSignedIn = res.isSignedIn;
      });
      if (isSignedIn){
        Navigator.pushNamed(context, '/GeneratedCometitionsWidget');
        /*
        Alert(
            context: context,
            type: AlertType.success,
            title: "You've succesfully logged in",
            buttons: [
              DialogButton(
                child: Text(
                  "Next",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                onPressed: () => Navigator.pushNamed(context,'/GeneratedDashboardZachWidget'),
                width: 120,
              )
            ],).show(); */
      }
    } on AuthError catch (e) {
      print(e);
      Alert(context: context, type: AlertType.error, title: "Your email/password is invalid. Please try again.")
          .show();
      return 'Log In Error: ' + e.toString();
    }
  }

/*
  //ORANGE SIGN UP PAGE
    @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Together We Create',
        theme: ThemeData(
            // This is the theme of the sign in page

            primarySwatch: Colors.orange,
            textTheme: TextTheme(
              display2: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 15.0,
                color: Colors.white,
              ),
            ),
        ),
       home: SafeArea(
        child: FlutterLogin(
            title: "Let's Create",
            onLogin: _signIn,
            onSignup: _registerUser,
            onRecoverPassword: (_) => null,
            theme: null,
            ),
       ),
    );
  }
*/

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
                    left: 32.0,
                    top: 524.0,
                    right: null,
                    bottom: null,
                    width: 308.0,
                    height: 52.0,
                    child: GeneratedGroup7Widget(),
                  ),
                  Positioned(
                    left: 17.0,
                    top: 231.0,
                    right: null,
                    bottom: null,
                    width: 350.0,
                    height: 40.0,
                    child: GeneratedEmailAddressWidget(),
                  ),
                  Positioned(
                    left: 32.0,
                    top: 157.0,
                    right: null,
                    bottom: null,
                    width: 230.0,
                    height: 24.0,
                    child: GeneratedSignUpWidget(),
                  ),
                  Positioned(
                    left: 17.0,
                    top: 288.0,
                    right: null,
                    bottom: null,
                    width: 350.0,
                    height: 40.0,
                    child: GeneratedUserNameWidget(),
                  ),
                  Positioned(
                    left: 17.0,
                    top: 345.0,
                    right: null,
                    bottom: null,
                    width: 350.0,
                    height: 40.0,
                    child: GeneratedPasswordWidget(),
                  ),
                  Positioned(
                    left: 17.0,
                    top: 405.0,
                    right: null,
                    bottom: null,
                    width: 350.0,
                    height: 40.0,
                    child: GeneratedConfirmPasswordWidget(),
                  ),
                  Positioned(
                    //ok
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
                              child: GeneratedIcon1024x1024FullWidget2(),
                            ))
                      ]);
                    }),
                  ),
                  Positioned(
                    left: 277.0,
                    top: 362.0,
                    right: null,
                    bottom: null,
                    width: 64.0,
                    height: 2.0,
                    child: GeneratedFrame1452Widget(),
                  )
                ]),
          ),
        ));
  }
}