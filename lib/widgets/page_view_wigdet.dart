import 'package:flutter/material.dart';
import '../pages_and_cards_list.dart';
class PageViewApp extends StatefulWidget {
  @override
  _PageViewAppState createState() => _PageViewAppState();
}
class _PageViewAppState extends State<PageViewApp> {
  PageController _pageController = PageController();
  int _pageIndex;

  void onPageChanged(pageIndex) {
    setState(() {
      _pageIndex = pageIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: pages.map((page) => page).toList(),
      controller: _pageController,
      onPageChanged: onPageChanged,
      physics: BouncingScrollPhysics(),
    );
  }
}
