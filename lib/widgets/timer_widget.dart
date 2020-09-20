import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import '../constants.dart';

class TimerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      circularStrokeCap: CircularStrokeCap.round,
      linearGradient: LinearGradient(
        colors: [
          Color.fromRGBO(205, 101, 250, 1),
          Color.fromRGBO(74, 151, 255, 1),
        ],
      ),
      radius: MediaQuery.of(context).size.height * 0.27,
      animation: true,
      animationDuration: 1200,
      lineWidth: 20.0,
      percent: 0.8,
      center: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size .height*0.21,
        height: MediaQuery.of(context).size .height*0.21,
        decoration: BoxDecoration(
            color: kScaffoldColor, borderRadius: BorderRadius.circular(MediaQuery.of(context).size .height*0.21 /2 )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              "Level 2",
              style: TextStyle(
                  color: Color.fromRGBO(105, 112, 216, 1),
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0),
            ),
            Text(
              "04.00",
              style: TextStyle(
                  fontSize: 30,
                  color: Color.fromRGBO(5, 58, 153, 1),
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Total Activity",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(105, 112, 216, 1)),
            ),
            Text(
              "1518",
              style: TextStyle(
                  color: Color.fromRGBO(105, 112, 216, 1),
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
//                    circularStrokeCap: CircularStrokeCap.butt,
      backgroundColor: Colors.white,
    );
  }
}
