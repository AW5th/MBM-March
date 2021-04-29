import 'package:flutter/material.dart';
import 'package:flutter_app_two/models/ModelProvider.dart';
import 'package:flutter_app_two/models/Genres.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:flutter_app_two/amplifyconfiguration.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:flutter_app_two/helpers/transform/transform.dart';
import 'package:flutter_app_two/fig2flutterapp/Testing_Page/generated/GeneratedIcon1024x1024FullWidget2.dart';

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
  final _genreID = "genre";

  void _configureAmplify() {
    //instance of model provider
    final provider = ModelProvider();
    final dataStorePlugin = AmplifyDataStore(modelProvider: provider);

    _amplify.addPlugin(dataStorePlugins: [(dataStorePlugin)]);
    _amplify.configure(amplifyconfig);

    print('Amplify configured');
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
              //button test
              Positioned(
                left: null,
                top: 356.0,
                right: null,
                bottom: null,
                width: 200.0,
                height: 75.0,
                child: ElevatedButton.icon(
                  label: Text('EDM'),
                  icon: Icon(Icons.file_upload),
                  onPressed: () {
                    create("edm");
                    print('Pressed - EDM should have appeared in back end!!!!');
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


    void create(String genreString) async {
    Genres genreObject = Genres(id: _genreID, Genre: genreString);
      //adds genre
      genreObject.addGenre(genreString);

    try {
      await Amplify.DataStore.save(genreObject);

      print('Saved ${genreObject.toString()}');
    }
    catch(e){
      print(e);
    }
  }

  void readAll() async {
    try {
      final genreObjects = await Amplify.DataStore.query(Genres.classType);

      print(genreObjects.toString());
    }
    catch (e) {
      print(e);
    }
  }

  Future<Genres> readByID() async {
    try {
      final genreObjects = await Amplify.DataStore.query(Genres.classType, where: Genres.ID.eq(_genreID));

      if(genreObjects.isEmpty) {
        print("No objects with ID: $_genreID");
        return null;
      }

      final genreObject = genreObjects.first;
      print(genreObject.toString());
      return genreObject;
    }
    catch(e){
      print(e);
      throw e;
    }
  }
  //Same as create, but must have same ID
  void update() async {
    try{
      final genreObject = await readByID();

      final updatedObject = genreObject.copyWith(Genre: genreObject.Genre + ' [UPDATED]n');
      await Amplify.DataStore.save(updatedObject);
      print('Updated object to ${updatedObject.toString()}');
    }
    catch (e) {
      print(e);
    }
  }

  void delete() async {

  }
}
