import 'package:flutter/material.dart';
import 'package:uidesign/widgets/on_boarding_page.dart';




class Thirdpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OnBoardingPage(
      isItLeft: false,
      buttonText2: "Next",
      buttonText1:"",
      description: ["",""],
      imagePath:"assets/undraw_empty_cart_co35.svg",
      text: ["Reedem","Coins & Shop"],
      question: "Redeem coins to shop .Buy any product",
      answer: "Get a chnace to win iPhone 11",
    );
  }
}
