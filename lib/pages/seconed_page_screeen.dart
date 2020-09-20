import 'package:flutter/material.dart';
import 'package:uidesign/widgets/on_boarding_page.dart';

class SeconedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OnBoardingPage(
      text: [
        "Tap your ","Screen"],
      buttonText1: "Skip",
      buttonText2: "Next",
      isItLeft: true,
      imagePath: "assets/undraw_mic_drop_uuyg.svg",
      question:"Don't stop earning.Now Tap your screen",
      answer: "to earn more coins",
      description:["Tapping","works\nJust fine"],
    );
  }
}
