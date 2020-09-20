import 'package:flutter/material.dart';
import '../widgets/on_boarding_page.dart';


class FirstBage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OnBoardingPage(
      text: ["Shake your","Phone"],
      buttonText1: "Skip",
      buttonText2: "Next",
      isItLeft: false,
      imagePath: "assets/undraw_businessman_97x4.svg",
      question:"Tired of walking?",
      answer: "Shake your phone to earn coins",
      description:["Earn coins","Just with a Shake"],
    );
  }
}

