import 'package:flutter/material.dart';
import '../constants.dart';
import '../widgets/timer_widget.dart';
import '../pages_and_cards_list.dart';
import '../widgets/tips_widget.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            Container(
              width: double.infinity,
              color: Color.fromRGBO(76, 89, 222, 1),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Today",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          Text(
                            "30 aug 2020",
                            style:
                                TextStyle(color: Colors.white70, fontSize: 13),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TimerWidget(),
                ],
              ),
            ),
            Positioned(
              right: 15,
              top: 30,
              child: Container(
                child: Icon(
                  Icons.favorite,
                  size: 25,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              child: Container(
                decoration: BoxDecoration(
                    color: kScaffoldColor,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30))),
                alignment: Alignment.bottomCenter,
                height: MediaQuery.of(context).size.height * 0.5,
                width: double.infinity,
                child: Column(
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height*0.34,
                      margin:
                          const EdgeInsets.only(top: 20, left: 10, right: 10),
                      child: GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  crossAxisSpacing: 15,
                                  childAspectRatio: 2 / 2,
                                  mainAxisSpacing: 10),
                          itemCount: cards.length,
                          itemBuilder: (context, i) {
                            return cards[i];
                          }),
                    ),
                    Expanded(child: TipsWidget())
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: kButtonColor,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            title: Text("Home"),
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            title: Text("Friends"),
            icon: Icon(Icons.people),
          ),
          BottomNavigationBarItem(
            title: Text("Shop"),
            icon: Icon(Icons.shopping_basket),
          ),
          BottomNavigationBarItem(
            title: Text("BattleField"),
            icon: Icon(Icons.border_all),
          ),
          BottomNavigationBarItem(
            title: Text(
              "Profile",
            ),
            icon: Icon(Icons.account_circle),
          )
        ],
      ),
    );
  }
}
