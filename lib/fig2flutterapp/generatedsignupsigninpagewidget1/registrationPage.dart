import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_core/amplify_core.dart';
import 'amplifyconfiguration.dart';
import 'dart:developer';
import 'package:flutter_login/flutter_login.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'package:flutter_app_two/fig2flutterapp/Artist_Listener/Artist_Listener.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedsignupsigninpagewidget1/generated/GeneratedGroup4Widget2.dart';
import 'package:flutter_app_two/fig2flutterapp/generatedsignupsigninpagewidget1/generated/GeneratedNextWidget.dart';
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

class MyApp extends State<GeneratedSignUpSignInpageWidget1> {
  // gives our app awareness about whether we are succesfully connected to the cloud
  bool _amplifyConfigured = false;
  // Instantiate Amplify
  Amplify amplifyInstance = Amplify();

  //Key for validaiton(textformfield)
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  // controllers for text input
  final emailController = TextEditingController();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  String _signUpError = "";
  List<String> _signUpExceptions = [];
  bool isSignUpComplete = false;
  bool _isSignedUp = false;

  void _setError(AuthError error) {
    setState(() {
      _signUpError = error.cause;
      _signUpExceptions.clear();
      error.exceptionList.forEach((el) {
        _signUpExceptions.add(el.exception);
      });
    });
  }

  @override
  void initState() {
    super.initState();
    // amplify is configured on startup
    _configureAmplify();
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the widget tree.
    emailController.dispose();
    usernameController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
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

  /*w
  Future<String> _registerUser(LoginData data) async {
    try {
      Map<String, dynamic> userAttributes = {
        "email": emailController.text,
        "username": usernameController.text,
      };
      SignUpResult res = await Amplify.Auth.signUp(
          username: data.name,
          password: data.password,
          options: CognitoSignUpOptions(userAttributes: userAttributes));
      setState(() {
        isSignUpComplete = res.isSignUpComplete;
        print("Sign up: " + (isSignUpComplete ? "Complete" : "Not Complete"));
      });
      print("Signing in...");
      if (isSignUpComplete) {
        print("You signed in!");
        Alert(
          context: context,
          type: AlertType.success,
          title:
              "You've succesfully signed up, check you're email for confirmtion code.",
          buttons: [
            DialogButton(
              child: Text(
                "Close",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () => Navigator.pushNamed(context, '/loginPage'),
              width: 120,
            )
          ],
        ).show();
        Navigator.pushNamed(context, '/loginPage');
      }
    } on AuthError catch (e) {
      print(e);
      return "Register Error: " + e.toString();
    }
  }
*/

  void _go_to_NextScreen(BuildContext context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (_) {
          return Artist_Listener();
        },
      ),
    );
  }

  void _signUp(BuildContext context) async {
    try {
      Map<String, dynamic> userAttributes = {
        "email": emailController.text.trim(),
        "preferred_username": emailController.text.trim(),
        // additional attributes as needed
      };
      SignUpResult res = await Amplify.Auth.signUp(
          username: emailController.text.trim(),
          password: passwordController.text.trim(),
          options: CognitoSignUpOptions(userAttributes: userAttributes));
      _go_to_NextScreen(context);
      print(res.isSignUpComplete);
      setState(() {
        _isSignedUp = true;
      });

      if (isSignUpComplete) {
        print("You signed in!");

        Alert(
          context: context,
          type: AlertType.success,
          title:
              "You've succesfully signed up, check you're email for confirmtion code.",
          buttons: [
            DialogButton(
              child: Text(
                "Close",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () => Navigator.pushNamed(
                  context, '/GeneratedSignUpSignInpageWidget'),
              width: 120,
            )
          ],
        ).show();
      }
    } on AuthError catch (error) {
      _setError(error);
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

  String validatePassword(String value) {
    if (value.isEmpty) {
      return "* Required";
    } else if (value.length < 6) {
      return "Password should be atleast 6 characters";
    } else if (value.length > 15) {
      return "Password should not be greater than 15 characters";
    } else
      return null;
  }

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

              //Next Button
              Positioned(
                left: 32.0,
                top: 524.0,
                right: null,
                bottom: null,
                width: 308.0,
                height: 52.0,
                child: GestureDetector(
                  onTap: () => _signUp(context),
                  /*
                  onTap: () => Navigator.pushNamed(
                      context, '/Artist_Listener'), */
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
                            child: GeneratedGroup4Widget2(),
                          ),
                          Positioned(
                            left: 74.0,
                            top: 14.0,
                            right: null,
                            bottom: null,
                            width: 166.0,
                            height: 30.0,
                            child: GeneratedNextWidget(),
                          )
                        ]),
                  ),
                ),
              ),

              //Enter Email
              Positioned(
                left: 17.0,
                top: 231.0,
                right: null,
                bottom: null,
                width: 350.0,
                height: 40.0,
                child: TextFormField(
                  decoration: new InputDecoration(
                    labelText: "Enter Email",
                    fillColor: Colors.white,
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(25.0),
                      borderSide: new BorderSide(),
                    ),
                    //fillColor: Colors.green
                  ),
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  style: new TextStyle(
                    fontFamily: "Poppins",
                  ),
                ),
              ),
              //Sign Up Title
              Positioned(
                left: 32.0,
                top: 157.0,
                right: null,
                bottom: null,
                width: 230.0,
                height: 24.0,
                child: GeneratedSignUpWidget(),
              ),
              //Enter Username
              Positioned(
                left: 17.0,
                top: 288.0,
                right: null,
                bottom: null,
                width: 350.0,
                height: 40.0,
                child: TextFormField(
                  decoration: new InputDecoration(
                    labelText: "Enter Username",
                    fillColor: Colors.white,
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(25.0),
                      borderSide: new BorderSide(),
                    ),
                    //fillColor: Colors.green
                  ),
                  validator: validatePassword,
                  controller: usernameController,
                  keyboardType: TextInputType.name,
                  style: new TextStyle(
                    fontFamily: "Poppins",
                  ),
                ),
              ),
              /*
              const Padding(padding: EdgeInsets.all(10.0)),
              FlatButton(
                textColor: Colors.black, // Theme.of(context).primaryColor,
                color: Colors.amber,
                onPressed: () => _signUp,
                child: Text(
                  'Create Account',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              FlatButton(
                height: 5,
                onPressed: _signUp,
                child: Text(
                  'Already registered? Sign In',
                  style: Theme.of(context).textTheme.subtitle2,
                ),
              ), */
              //Enter password
              Positioned(
                left: 17.0,
                top: 345.0,
                right: null,
                bottom: null,
                width: 350.0,
                height: 40.0,
                child: TextFormField(
                  obscureText: true,
                  decoration: new InputDecoration(
                    hintText: "Enter Password",
                    fillColor: Colors.white,
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(25.0),
                      borderSide: new BorderSide(),
                    ),
                    //fillColor: Colors.green
                  ),
                  validator: validatePassword,
                  controller: passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  style: new TextStyle(
                    fontFamily: "Poppins",
                  ),
                ),
              ),
              //Confirm password
              Positioned(
                left: 17.0,
                top: 405.0,
                right: null,
                bottom: null,
                width: 350.0,
                height: 40.0,
                child: TextFormField(
                  obscureText: true,
                  decoration: new InputDecoration(
                    hintText: "Confirm Password",
                    fillColor: Colors.white,
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(25.0),
                      borderSide: new BorderSide(),
                    ),
                    //fillColor: Colors.green
                  ),
                  validator: validatePassword,
                  controller: confirmPasswordController,
                  keyboardType: TextInputType.visiblePassword,
                  style: new TextStyle(
                    fontFamily: "Poppins",
                  ),
                ),
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
