import 'package:flutter/material.dart';

/* Text User Name
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedUserNameWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: new InputDecoration(
        labelText: "Enter Username",
        fillColor: Colors.white,
        border: new OutlineInputBorder(
          borderRadius: new BorderRadius.circular(25.0),
          borderSide: new BorderSide(
          ),
        ),
        //fillColor: Colors.green
      ),
      validator: (val) {
        if(val.length==0) {
          return "Username cannot be empty";
        }else{
          return null;
        }
      },
      keyboardType: TextInputType.emailAddress,
      style: new TextStyle(
        fontFamily: "Poppins",
      ),
    );
    /*
    return Text(
      '''User Name''',
      overflow: TextOverflow.visible,
      textAlign: TextAlign.left,
      style: TextStyle(
        height: 1.2222222222222223,
        fontSize: 18.0,
        fontFamily: 'SF Compact Rounded',
        fontWeight: FontWeight.w400,
        color: Color.fromARGB(255, 150, 150, 150),

        /* letterSpacing: -0.40799999237060547, */
      ),
    );*/
  }
}
