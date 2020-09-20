import 'package:flutter/material.dart';
import '../constants.dart';

class TipsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(15),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          title: Text(
            "LEVEL 2!",
            style: TextStyle(
                color: kButtonColor, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            "Reach 10 points today to upgrade to level 3!\n"
            "Redeem more coins to buy more products",
            style: TextStyle(color: kButtonColor, fontSize: 12),
          ),
          trailing: Icon(Icons.arrow_forward),
        ),
      ),
    );
  }
}
