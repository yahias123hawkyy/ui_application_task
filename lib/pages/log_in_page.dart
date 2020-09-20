import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uidesign/constants.dart';
import 'package:uidesign/widgets/customized_button_widget.dart';
import '../widgets/text_field.dart';

class LogInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(220),
                      bottomLeft: Radius.circular(100)),
                  color: Color.fromRGBO(76, 103, 224, 1),
                ),
                width: double.infinity,
                height: MediaQuery.of(context).size.height*0.6,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SvgPicture.asset(
                      "assets/user.svg",
                      width: 60,
                      height: 60,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    textForm("  Email address"),
                    SizedBox(
                      height: 20,
                    ),
                    textForm("  Password")
                  ],
                ),
              ),
              SizedBox(height:  MediaQuery.of(context).size.height*0.03,),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    customizedButton(
                        textColor: kButtonColor,
                        text: "Log in",
                        width: 170,
                        buttonColor: Colors.white,
                        borderColor: Colors.white
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Forget Password",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.blue),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          "assets/facebook.png",
                          width: 30,
                          height: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          "assets/google.png",
                          height: 30,
                          width: 30,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Don't have an account ? ",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "sign up",
                          style: TextStyle(color: Colors.blue),
                        )
                      ],
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(200),
                      topRight: Radius.circular(150)),
                  color: Color.fromRGBO(76, 103, 224, 1),
                ),
                width: double.infinity,
                height:  MediaQuery.of(context).size.height*0.35,
              )
            ],
          ),
        ),
      ),
    );
  }
}


