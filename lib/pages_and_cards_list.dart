import 'package:flutter/material.dart';
import 'package:uidesign/pages/main_page.dart';
import 'pages/access_page.dart';
import 'pages/register.dart';
import 'package:uidesign/pages/third_page.dart';
import 'pages/first_page_screen.dart';
import 'pages/seconed_page_screeen.dart';
import 'pages/log_in_page.dart';
import 'widgets/activity_card_widgdet.dart';

List<Widget> pages = [
  FirstBage(),
  SeconedPage(),
  Thirdpage(),
  SignUpOrInPage(),
  LogInPage(),
  AccessPage(),
  MainPage(),
];


List<Widget> cards = [
  activityCard(
      icon: Icon(
        Icons.person,
        color: Colors.white,
      ),
      text: "1400",
      activity: "Steps"),
  activityCard(
      icon: Icon(
        Icons.shop,
        color: Colors.white,
      ),
      text: "98",
      activity: "Tap"),
  activityCard(
      icon: Icon(
        Icons.location_on,
        color: Colors.white,
      ),
      text: "20",
      activity: "Shake"),
  activityCard(
      icon: Icon(
        Icons.border_all,
        color: Colors.white,
      ),
      activity: "Distance",
      text: "560"),
  activityCard(
      icon: Icon(
        Icons.check_circle,
        color: Colors.white,
      ),
      activity: "Calories",
      text: "140"),
  activityCard(
      icon: Icon(
        Icons.category,
        color: Colors.white,
      ),
      text: "0/5",
      activity: "Daily Rewards")
];

