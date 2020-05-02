import 'package:flutter/material.dart';
import 'product.dart';

class ProductGrid extends StatelessWidget {
  String header;

  ProductGrid(this.header);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.fromLTRB(10, 20, 10, 10),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 5.0,
                // has the effect of softening the shadow
                spreadRadius: 1.0,
              ),
            ],
          ),
          child: Column(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    color: Theme.of(context).primaryColor,
                    height: 2,
                    width: 200,
                    margin: EdgeInsets.fromLTRB(0, 1, 0, 1),
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        header,
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Roboto',
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Container(
                    color: Theme.of(context).primaryColor,
                    height: 2,
                    width: 300,
                    margin: EdgeInsets.fromLTRB(0, 1, 0, 10),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Product("Barbeador","999,99","1.jpg"),
                  Product("Air-fryer","999,99","2.jpg"),
                  Product("Notebook","999,99","1.jpg"),
                ],
              ),
              Row(
                children: <Widget>[
                  Product("Banco Imobiliario","999,99","4.jpg"),
                  Product("Caixa de som ","999,99","5.jpg"),
                  Product("Celular","999,99","6.jpg"),
                ],
              ),
              GestureDetector(
                onTap: () {},
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          color: Theme.of(context).primaryColor,
                          height: 2,
                          width: 100,
                          margin: EdgeInsets.fromLTRB(0, 10, 0, 1),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          "Ver mais",
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Roboto',
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          color: Theme.of(context).primaryColor,
                          height: 2,
                          width: 50,
                          margin: EdgeInsets.fromLTRB(0, 1, 0, 1),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}