import 'package:MusicByMasses/helpers/svg/svg.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:MusicByMasses/amplifyconfiguration.dart';
import 'package:MusicByMasses/fig2flutterapp/Login_CreateAccount/Login_CreateAccount.dart';
import 'dart:developer';
import 'package:flutter_login/flutter_login.dart';
import 'package:page_transition/page_transition.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'package:MusicByMasses/fig2flutterapp/Artist_Listener/Artist_Listener.dart';
import 'package:flutter/material.dart';
import 'package:MusicByMasses/fig2flutterapp/registrationPage/generated/GeneratedNextWidget.dart';
import 'package:MusicByMasses/fig2flutterapp/registrationPage/generated/GeneratedEmailAddressWidget.dart';
import 'package:MusicByMasses/fig2flutterapp/registrationPage/generated/GeneratedSignUpWidget.dart';
import 'package:MusicByMasses/fig2flutterapp/registrationPage/generated/GeneratedConfirmPasswordWidget.dart';
import 'package:MusicByMasses/helpers/transform/transform.dart';
import 'package:MusicByMasses/fig2flutterapp/registrationPage/generated/GeneratedLine25Widget.dart';
import 'package:MusicByMasses/fig2flutterapp/registrationPage/generated/GeneratedLine24Widget.dart';
import 'package:MusicByMasses/fig2flutterapp/registrationPage/generated/GeneratedEmailAddressWidget1.dart';
import 'package:MusicByMasses/fig2flutterapp/registrationPage/generated/GeneratedIcon1024x1024FullWidget2.dart';
import 'package:MusicByMasses/models/ModelProvider.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
//import 'package:MusicByMasses/fig2flutterapp/registrationPage/generated/GeneratedGroup7Widget.dart'
/* Registration   Page  */

void main() {
  runApp(MaterialApp(
    home: registrationPage(),
  ));
}

class registrationPage extends StatefulWidget {
  @override
  MyApp createState() => MyApp();
}

class MyApp extends State<registrationPage> {
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

    ModelProvider provider = ModelProvider();
    AmplifyDataStore dataStorePlugin =
        AmplifyDataStore(modelProvider: provider);
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

  //below is used as refecrence to get error messages to popup when register fails
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
              onPressed: () => Navigator.push(context, PageTransition(type: PageTransitionType.fade, duration: Duration(milliseconds: 100), child: '/loginPage'),
              width: 120,
            )
          ],
        ).show();
        Navigator.push(context, PageTransition(type: PageTransitionType.fade, duration: Duration(milliseconds: 100), child: '/loginPage');
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
  var _confirm = true;

  void _signUp(BuildContext context) async {
    try {
      Map<String, dynamic> userAttributes = {
        "email": emailController.text.trim(),
        "preferred_username": usernameController.text.trim(),
        // additional attributes as needed
      };

      if(!(passwordController.text.compareTo(confirmPasswordController.text) == 0)) {
        setState(() {
          _confirm = false;
        });
        return;
      }

      SignUpResult res = await Amplify.Auth.signUp(
          username: emailController.text.trim(),
          password: passwordController.text.trim(),
          options: CognitoSignUpOptions(userAttributes: userAttributes));

      if (res.isSignUpComplete) {
        print("You signed up!");
        showDialog<void>(
            context: context, builder: (context) => dialog(context));
      } else {
        print("Sign up  is not complete");
      }

      print("Sign up result: " + res.isSignUpComplete.toString());

      setState(() {
        _isSignedUp = true;
      });
    } on AuthError catch (error) {
        _setError(error);
        popUp(error.exceptionList.first.detail.toString());
    } finally{
      if(!_confirm)
        popUp("Passwords not the same.");
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

  //functions to goes back to previous
  Future<bool> _goBack() {
    Navigator.push(
        context,
        PageTransition(
            type: PageTransitionType.fade,
            duration: Duration(milliseconds: 100),
            child: Login_CreateAccount()));
  }

  //SIGN UP SUCCESS
  AlertDialog dialog(BuildContext context) => AlertDialog(
        title: Text("You're registered!"),
        content: Text(
            "You've succesfully signed up, check you're email for confirmtion code."),
        actions: [
          FlatButton(
            textColor: Color.fromARGB(255, 255, 121, 0),
            onPressed: () {
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.fade,
                      duration: Duration(milliseconds: 100),
                      child: Artist_Listener()));
              //Navigator.push(context, PageTransition(type: PageTransitionType.fade, duration: Duration(milliseconds: 100), child: '/Artist_Listener');
            },
            child: Text('Confirm'),
          ),
          FlatButton(
            textColor: Color.fromARGB(255, 255, 121, 0),
            onPressed: () => Navigator.pop(context),
            child: Text('Cancel'),
          ),
        ],
      );

  //Pop up if registration messes up

  AlertDialog signUpError(BuildContext context, String error) {
    String messsage = '';
    print("ERROR: " + error.toString());
    if(error.contains("UsernameExistsException"))
      messsage = "An account with the given email already exists.";
    else if(error.contains("Member must have length greater than or equal to 6 ") || error.contains("Password not long enough"))
      messsage = "The password given is invalid. Password must have length greater than or equal to 8 ";
    else if(error.contains("Password must have numeric characters"))
        messsage = "The password given is invalid. Password must have numeric characters";
    else if(error.contains("not the same"))
      messsage = "The password and confirmation password do not match.";

    return AlertDialog(
      title: Text('Registration failed'),
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
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _goBack,
      child: Material(
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
                    onTap: () {
                      print("Signing up...");
                      _signUp(context);
                    },
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
                              child: Container(
                                width: 308.0,
                                height: 52.0,
                                child: SvgWidget(painters: [
                                  SvgPathPainter.fill()
                                    ..addPath(
                                        'M0 20C0 8.9543 8.95431 0 20 0L288 0C299.046 0 308 8.95431 308 20L308 32C308 43.0457 299.046 52 288 52L20 52C8.95431 52 0 43.0457 0 32L0 20Z')
                                    ..color = Color.fromARGB(
                                        255, 255, 255, 255),
                                  SvgPathPainter.stroke(
                                    3.0,
                                    strokeJoin: StrokeJoin.miter,
                                  )
                                    ..addPath(
                                        'M20 3L288 3L288 -3L20 -3L20 3ZM305 20L305 32L311 32L311 20L305 20ZM288 49L20 49L20 55L288 55L288 49ZM3 32L3 20L-3 20L-3 32L3 32ZM20 49C10.6112 49 3 41.3888 3 32L-3 32C-3 44.7025 7.29746 55 20 55L20 49ZM305 32C305 41.3888 297.389 49 288 49L288 55C300.703 55 311 44.7025 311 32L305 32ZM288 3C297.389 3 305 10.6112 305 20L311 20C311 7.29745 300.703 -3 288 -3L288 3ZM20 -3C7.29745 -3 -3 7.29745 -3 20L3 20C3 10.6112 10.6112 3 20 3L20 -3Z')
                                    ..addClipPath(
                                        'M0 20C0 8.9543 8.95431 0 20 0L288 0C299.046 0 308 8.95431 308 20L308 32C308 43.0457 299.046 52 288 52L20 52C8.95431 52 0 43.0457 0 32L0 20Z')
                                    ..setLinearGradient(
                                      startX: -10.000000370791977,
                                      startY: 25.999981860616856,
                                      endX: 319.50000575068253,
                                      endY: 25.999980647753958,
                                      colors: [
                                        Color.fromARGB(
                                            255, 255, 213, 106),
                                        Color.fromARGB(
                                            255, 255, 122, 0)
                                      ],
                                      colorStops: [0.0, 1.0],
                                    ),
                                ]),
                              ),
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
                    controller: confirmPasswordController,
                    keyboardType: TextInputType.visiblePassword,
                    style: new TextStyle(
                      fontFamily: "Poppins",
                    ),
                  ),
                ),
                //LOGO
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
      ),
    );
  }
}
