import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widgets/customized_button_widget.dart';
import '../constants.dart';

class SignUpOrInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kScaffoldColor,
      body: SafeArea(
          child: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(86, 122, 237, 1),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(200),
                      bottomLeft: Radius.circular(100))),
              width: double.infinity,
              height: MediaQuery.of(context).size.height *0.6,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              decoration: BoxDecoration(
                  color: Color.fromRGBO(86, 122, 237, 1),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      topLeft: Radius.circular(150))),
              alignment: Alignment.bottomCenter,
              width: double.infinity,
              height: MediaQuery.of(context).size.height*0.36,
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  "LOGO",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Color.fromRGBO(89, 183, 151, 1)),
                ),
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height *0.48,
                  child:
                      SvgPicture.asset("assets/undraw_Login_re_4vu2.svg"),
                ),
                Column(
                  children: <Widget>[
                    customizedButton(
                        buttonColor: Colors.white,
                        width: 180.0,
                        text: "Log in ",
                        textColor: kButtonColor,
                        borderColor: Colors.white),
                    customizedButton(
                        buttonColor: Colors.transparent,
                        width: 180.0,
                        text: "Create account",
                        textColor: Colors.white,
                        borderColor: Colors.white)
                  ],
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
