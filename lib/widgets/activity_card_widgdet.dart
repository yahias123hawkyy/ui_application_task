import 'package:flutter/material.dart';


Widget activityCard({String text, Icon icon, String activity}) {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(124, 93, 245, 1),
            Color.fromRGBO(76, 89, 222, 1),
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        )),
    child: Container(
      margin: EdgeInsets.only(left: 20, top: 6),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          icon,
          Text(
            text,
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Text(
            activity,
            style: TextStyle(fontSize: 12, color: Colors.white),
          ),
        ],
      ),
    ),
  );
}






