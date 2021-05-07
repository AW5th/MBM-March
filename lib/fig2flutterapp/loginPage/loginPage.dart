import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:flutter_app_two/amplifyconfiguration.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'package:flutter/material.dart';
import 'package:flutter_app_two/fig2flutterapp/Artist_Listener/Artist_Listener.dart';
import 'package:flutter_app_two/fig2flutterapp/registrationPage/generated/GeneratedEmailAddressWidget.dart';
import 'package:flutter_app_two/fig2flutterapp/registrationPage/generated/GeneratedLine26Widget.dart';
import 'package:flutter_app_two/fig2flutterapp/registrationPage/generated/GeneratedPasswordWidget.dart';
import 'package:flutter_app_two/fig2flutterapp/registrationPage/generated/GeneratedNextWidget.dart';
import 'package:flutter_app_two/fig2flutterapp/registrationPage/generated/GeneratedGroup7Widget.dart';
import 'package:flutter_app_two/fig2flutterapp/registrationPage/generated/GeneratedLine27Widget.dart';
import 'package:flutter_app_two/fig2flutterapp/Feed_Dashboard/Feed_Dashboard.dart';
import 'package:flutter_app_two/fig2flutterapp/registrationPage/generated/GeneratedSignUpWidget.dart';
import 'package:flutter_app_two/fig2flutterapp/loginPage/generated/GeneratedLogInWidget.dart';
import 'package:flutter_app_two/fig2flutterapp/loginPage/generated/Login_Next_Button.dart';

import 'package:flutter_app_two/fig2flutterapp/registrationPage/generated/GeneratedConfirmPasswordWidget.dart';
import 'package:flutter_app_two/helpers/transform/transform.dart';
import 'package:flutter_app_two/fig2flutterapp/registrationPage/generated/GeneratedLine25Widget.dart';
import 'package:flutter_app_two/fig2flutterapp/registrationPage/generated/GeneratedLine24Widget.dart';
import 'package:flutter_app_two/fig2flutterapp/registrationPage/generated/GeneratedEmailAddressWidget1.dart';
import 'package:flutter_app_two/fig2flutterapp/registrationPage/generated/GeneratedIcon1024x1024FullWidget2.dart';
import 'package:flutter_app_two/fig2flutterapp/registrationPage/generated/GeneratedGroup4Widget2.dart';
import 'package:flutter_app_two/models/ModelProvider.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
/* Login Page  */

void main() {
  runApp(MaterialApp(
    home: loginPage(),
  ));
}

class loginPage extends StatefulWidget {
  @override
  MyApp createState() => MyApp();
}

class MyApp extends State<loginPage> {
  // gives our app awareness about whether we are succesfully connected to the cloud
  bool _amplifyConfigured = false;
  // Instantiate Amplify
  Amplify amplifyInstance = Amplify();
  // controllers for text input
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

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

    ModelProvider provider = ModelProvider();
    AmplifyDataStore dataStorePlugin = AmplifyDataStore(modelProvider: provider);
    Amplify.DataStore.addPlugin(dataStorePlugin);

    await amplifyInstance.configure(amplifyconfig);
    try {
      setState(() {
        _amplifyConfigured = true;
      });
    } catch (e) {
      print(e);
    }
  }

  void _go_to_NextScreen(BuildContext context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (_) {
          return Feed_Dashboard();
        },
      ),
    );
  }

  void _signIn(BuildContext context) async {
    // Sign out before in case a user is already signed in
    // If a user is already signed in - Amplify.Auth.signIn will throw an exception
    try {
      await Amplify.Auth.signOut();
    } on AuthError catch (e) {
      print(e);
    }

    try {
      SignInResult res = await Amplify.Auth.signIn(
          username: emailController.text.trim(),
          password: passwordController.text.trim());
      _go_to_NextScreen(context);
    } on AuthError catch (e) {
      setState(() {
        _signUpError = e.cause;
        _signUpExceptions.clear();
        e.exceptionList.forEach((el) {
          _signUpExceptions.add(el.exception);
        });
      });
    }
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
                  onTap: () => _signIn(context),
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
              //Email textbox
              Positioned(
                left: 17.0,
                top: 231.0,
                right: null,
                bottom: null,
                width: 350.0,
                height: 40.0,
                child: TextFormField(
                  decoration: new InputDecoration(
                    labelText: "Enter Email/Username",
                    fillColor: Colors.white,
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(25.0),
                      borderSide: new BorderSide(),
                    ),
                    //fillColor: Colors.green
                  ),
                  validator: (val) {
                    if (val.length == 0) {
                      return "Email cannot be empty";
                    } else {
                      return null;
                    }
                  },
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  style: new TextStyle(
                    fontFamily: "Poppins",
                  ),
                ),
              ),
              Positioned(
                left: 32.0,
                top: 157.0,
                right: null,
                bottom: null,
                width: 230.0,
                height: 24.0,
                child: GeneratedLogInWidget(),
              ),
              //Password textbox
              Positioned(
                left: 17.0,
                top: 288.0,
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
                  validator: (val) {
                    if (val.length == 0) {
                      return "Password cannot be empty";
                    } else {
                      return null;
                    }
                  },
                  controller: passwordController,
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
              )
            ]),
      ),
    ));
  }
}
