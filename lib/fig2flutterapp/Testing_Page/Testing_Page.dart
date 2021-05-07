import 'package:flutter/material.dart';
import 'package:flutter_app_two/helpers/transform/transform.dart';
import 'package:flutter_app_two/fig2flutterapp/Testing_Page/generated/GeneratedIcon1024x1024FullWidget2.dart';

import 'package:flutter_app_two/fig2flutterapp/loginPage/loginPage.dart';

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:flutter_app_two/amplifyconfiguration.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:flutter_app_two/models/ModelProvider.dart';
import 'package:flutter_app_two/models/User.dart';

/* Testing Page      */

void main() {

  runApp(MaterialApp(
    home: Testing_Page(),
  ));
}

class Testing_Page extends StatefulWidget {
  @override
  MyApp createState() => MyApp();
}

class MyApp extends State<Testing_Page> {
  //initiate amplify
  final _amplify = Amplify();
  final _userID = "test";
  //instance of model provider
  var provider = ModelProvider();

  bool edmCheck = false;
  bool rapCheck = false;
  bool popCheck = false;

  @override
  void initState() {
    var dataStorePlugin = AmplifyDataStore(modelProvider: provider);
     _amplify.addPlugin(dataStorePlugins: [(dataStorePlugin)]);
     _amplify.configure(amplifyconfig);
    super.initState();
    _configureAmplify();
  }

  void _configureAmplify() async {
    print('Amplify & dataStore configured');
  }
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
        width: 375.0,
        height: 812.0,
        child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,
            overflow: Overflow.visible,
            children: [
              //Go back button
              Positioned(
                left: 287.0,
                top: 56.0,
                right: null,
                bottom: null,
                width: 86.0,
                height: 30.0,
                child: GestureDetector(
                  //TODO - Change the route to pick what page you wanna go
                  onTap: () =>
                      Navigator.pushNamed(context, '/Login_CreateAccount'),
                  child: Text(
                    '''Back''',
                    overflow: TextOverflow.visible,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      height: 1.2222222222222223,
                      fontSize: 18.0,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,

                      /* letterSpacing: -0.40799999237060547, */
                    ),
                  ),
                ),
              ),
              //EDM button
              Positioned(
                left: null,
                top: 156.0,
                right: null,
                bottom: null,
                width: 200.0,
                height: 75.0,
                child: ElevatedButton.icon(
                  style: edmCheck ? ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.red) ) : ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.orange) ),
                  label: Text('EDM'),
                  icon: Icon(Icons.file_upload),
                  onPressed: () {
                    switchEDM();
                    print('Pressed - EDM is' +"$edmCheck");
                  },
                ),
              ),
              //Rap button
              Positioned(
                left: null,
                top: 256.0,
                right: null,
                bottom: null,
                width: 200.0,
                height: 75.0,
                child: ElevatedButton.icon(
                  style: rapCheck ? ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.red) ) : ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.orange) ),
                  label: Text('Rap'),
                  icon: Icon(Icons.file_upload),
                  onPressed: () {
                    switchRap();
                    print('Pressed - Rap is' +"$rapCheck");
                  },
                ),
              ),
              //Pop button
              Positioned(
                left: null,
                top: 356.0,
                right: null,
                bottom: null,
                width: 200.0,
                height: 75.0,
                child: ElevatedButton.icon(
                    style: popCheck ? ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.red) ) : ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.orange) ),
                  label: Text('Pop'),
                  icon: Icon(Icons.file_upload),
                  onPressed: () {
                    switchPop();
                    print('Pressed - Pop is' +"$popCheck");
                  },
                ),
              ),
              //send data button
              Positioned(
                left: null,
                top: 456.0,
                right: null,
                bottom: null,
                width: 200.0,
                height: 75.0,
                child:
                ElevatedButton.icon(
                  label: Text('Send data'),
                  icon: Icon(Icons.file_upload),
                  onPressed: () {
                    sendData();
                    print('send data button press');
                  },
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
    );
  }
  void switchEDM(){
    setState(() { edmCheck = !edmCheck; });
  }
  void switchRap(){
    setState(() { rapCheck = !rapCheck; });
  }
  void switchPop(){
    setState(() { popCheck = !popCheck; });
  }
  void printInts(List<String> a) => print(a);
  void sendData() async {
    var selectedGenres = <String>[];
    if(edmCheck)
      selectedGenres.add("EDM");
    if(rapCheck)
      selectedGenres.add("Rap");
    if(popCheck)
      selectedGenres.add("Pop");

    printInts(selectedGenres);
    print("Not empty?: "+(!selectedGenres.isEmpty).toString());
    final addGenre = User(id: _userID, Genres: selectedGenres);

    try {
       if(!selectedGenres.isEmpty){
         await Amplify.DataStore.save(addGenre);
         print('Saved ${addGenre.toString()}');
       }
       else{
         print("You didn't select anything");
       }
    } catch (e) {
      print(e);
    }

  }

  void readAll() async {

  }

  //Same as create, but must have same ID
  void update() async {

  }

  void delete() async {

  }
}
