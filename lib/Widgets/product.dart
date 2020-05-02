import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  String name, price, image;

  Product(this.name, this.price, this.image);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(8.0),
            margin: EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
              ),
            ),
            height: 100,
            width: 100,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/products/$image"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Text(
            name,
            style: TextStyle(
                fontSize: 16,
                fontFamily: 'Roboto',
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.bold),
          ),
          Text("R\$ $price"),
        ],
      ),
    );
  }
}
