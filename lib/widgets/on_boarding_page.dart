import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uidesign/constants.dart';
import '../widgets/customized_button_widget.dart';

class OnBoardingPage extends StatelessWidget {
  final List<String> text;
  final List<String> description;
  final String question;
  final String answer;
  final String imagePath;
  final String buttonText1;
  final String buttonText2;
  final bool isItLeft;

  OnBoardingPage(
      {this.text,
      this.imagePath,
      this.description,
      this.isItLeft,
      this.question,
      this.answer,
      this.buttonText1,
      this.buttonText2});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: kButtonColor,
        body: SafeArea(
            child: Stack(children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                  color: kScaffoldColor,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(200),
                      bottomLeft: Radius.circular(100))),
              width: double.infinity,
              height: MediaQuery.of(context).size.height*0.63,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              decoration: BoxDecoration(
                  color: kScaffoldColor,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      topLeft: Radius.circular(150))),
              alignment: Alignment.bottomCenter,
              width: double.infinity,
              height: size.height * 0.28,
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 20,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left:17.0),
                    child: Text(
                      "${text[0]} \n${text[1]}",
                      style: TextStyle(
                          color: Color.fromRGBO(90, 181, 147, 1),
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Stack(
                    children: <Widget>[
                      Container(
                        height: size.height * 0.6,
                        width: double.infinity,
                        child: SvgPicture.asset(
                          "$imagePath",
                          fit: BoxFit.fill,
                        ),
                      ),
                      Positioned(
                        left: isItLeft ? 10 : 310,
                        top: 115,
                        child: Text(
                          description[0],
                          style: TextStyle(
                              color: Color.fromRGBO(90, 181, 147, 1),
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Positioned(
                        left: isItLeft ? 10 : 255,
                        top: 135,
                        child: Text(
                          description[1],
                          style: TextStyle(
                              color: Color.fromRGBO(90, 181, 147, 1),
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Text(
                      question,
                      style: TextStyle(
                          color: Color.fromRGBO(109, 114, 168, 1),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Text(
                      answer,
                      style: TextStyle(
                          color: Color.fromRGBO(109, 114, 168, 1),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        buttonText1 == ""
                            ? Text("")
                            : customizedButton(
                                width: 120.0,
                                text: "Skip",
                                buttonColor: kScaffoldColor,
                                textColor: kButtonColor,
                                borderColor: kButtonColor),
                        customizedButton(
                            borderColor: kButtonColor,
                            textColor: Colors.white,
                            text: "Next",
                            width: 120.0,
                            buttonColor: kButtonColor)
                      ],
                    ),
                  )
                ]),
          )
        ])));
  }
}
