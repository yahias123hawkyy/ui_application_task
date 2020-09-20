import 'package:flutter/material.dart';

Widget textForm(String title) {
  return Card(
    elevation: 30,
    margin: const EdgeInsets.only(left: 50, right: 50),
    child: TextField(
      decoration: InputDecoration(hintText: " $title"),
    ),
  );
}