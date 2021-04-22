import 'package:flutter/material.dart';

/* Text Password
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedPasswordWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: true,
      decoration: new InputDecoration(
        hintText: "Enter Password",
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
          return "Password cannot be empty";
        }else{
          return null;
        }
      },
      keyboardType: TextInputType.visiblePassword,
      style: new TextStyle(
        fontFamily: "Poppins",
      ),
    );
    /*
    return Text(
      '''Password''',
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
    ); */
  }
}