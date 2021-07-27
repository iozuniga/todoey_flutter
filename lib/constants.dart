import 'package:flutter/material.dart';

TextButton myFlatButton(double _height, double _width) {
  final ButtonStyle flatButtonStyle = TextButton.styleFrom(
    minimumSize: Size(_width, _height),
    backgroundColor: Colors.lightBlueAccent,
    padding: EdgeInsets.all(0),
  );
  return TextButton(
    style: flatButtonStyle,
    onPressed: () {},
    child: Text(
      "some text",
      style: TextStyle(color: Colors.white),
    ),
  );
}
