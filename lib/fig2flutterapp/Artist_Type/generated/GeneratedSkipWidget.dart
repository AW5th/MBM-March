import 'package:flutter/material.dart';

/* Skip button  */
class GeneratedSkipWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context,'/Feed_Dashboard'),
      child: Text(
        '''Skip''',
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
    );
  }
}
