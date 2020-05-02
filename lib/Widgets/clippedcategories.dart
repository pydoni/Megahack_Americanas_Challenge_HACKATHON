import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ClippedCategories extends StatelessWidget {
  String name;
  IconData iconfa;

  ClippedCategories(this.name, this.iconfa);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(50),
      ),
      margin: EdgeInsets.fromLTRB(20, 20, 10, 10),
      height: 100,
      width: 100,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
              child: FaIcon(
                iconfa,
                color: Colors.white,
              ),
            ),
            Text(
              name,
              style: TextStyle(
                  fontFamily: 'Roboto',
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}