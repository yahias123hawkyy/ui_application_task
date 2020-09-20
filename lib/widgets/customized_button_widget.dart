import 'package:flutter/material.dart';


Container customizedButton(
    {Color borderColor,
      double width,
      String text,
      Color buttonColor,
      Color textColor}) {
  return Container(
    width: width,
    child: RaisedButton(
      elevation: 0,
      onPressed: () => "",
      color: buttonColor,
      child: Text(
        text,
        style: TextStyle(color: textColor),
      ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(
            width: 1.4,
            color: borderColor,
          )),
    ),
  );
}