import 'package:flutter/material.dart';
import 'package:uidesign/widgets/customized_button_widget.dart';

class AccessPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Access Required",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Column(
                    children: <Widget>[
                      myCard(
                          "Google Fit",
                          Image.asset(
                            "assets/google.png",
                            width: 20,
                          )),
                      myCard(
                          "Location",
                          Icon(
                            Icons.location_on,
                            color: Colors.blue,
                          ))
                    ],
                  ),
                ],
              ),
              height: MediaQuery.of(context).size.height * 0.6,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(76, 103, 224, 1),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(200),
                      bottomLeft: Radius.circular(100))),
            ),
            Container(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  customizedButton(
                      borderColor: Colors.white,
                      buttonColor: Colors.white,
                      width: 170,
                      text: "Grant Permission",
                      textColor: Color.fromRGBO(76, 103, 224, 1)),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "More information",
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.blue),
                  )
                ],
              ),
              height: MediaQuery.of(context).size.height * 0.33,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(76, 103, 224, 1),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(200),
                      topRight: Radius.circular(50))),
            )
          ],
        ),
      ),
    );
  }
}

Widget myCard(String title, var icon) {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
    margin: const EdgeInsets.only(right: 40, left: 40, top: 20),
    child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          icon,
          SizedBox(
            width: 10,
          ),
          Text(title),
        ],
      ),
    ),
  );
}
