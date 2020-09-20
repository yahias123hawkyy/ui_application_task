import 'package:flutter/material.dart';
import 'pages_and_cards_list.dart';
import 'widgets/page_view_wigdet.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Internship Task",
      debugShowCheckedModeBanner: false,
      home: PageViewApp(),
    );
  }
}

