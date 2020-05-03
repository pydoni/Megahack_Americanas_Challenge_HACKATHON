import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Widgets/clippedcategories.dart';
import '../Widgets/navBar.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: navBarCustom(),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: <Widget>[

            Positioned(
              top: MediaQuery.of(context).size.height * 0.01,
              left: MediaQuery.of(context).size.width * 0.01,
              child: ClippedCategories("Informatica", FontAwesomeIcons.laptop, 1.5),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.01,
              left: MediaQuery.of(context).size.width * 0.35,
              child: ClippedCategories("bebês", FontAwesomeIcons.baby, 0.75),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.1,
              left: MediaQuery.of(context).size.width * 0.35,
              child: ClippedCategories("Móveis e\ndecoração", FontAwesomeIcons.couch, 1.0),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.02,
              left: MediaQuery.of(context).size.width * 0.53,
              child: ClippedCategories("Celulares", FontAwesomeIcons.mobileAlt, 1.0),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.18,
              left: MediaQuery.of(context).size.width * 0.01,
              child: ClippedCategories("Televisão", FontAwesomeIcons.tv, 0.75),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.2,
              left: MediaQuery.of(context).size.width * 0.15,
              child: ClippedCategories("Games", FontAwesomeIcons.gamepad, 1.25),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.14,
              left: MediaQuery.of(context).size.width * 0.55,
              child: ClippedCategories("Eletrodomésticos", FontAwesomeIcons.fan, 1.25),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.25,
              left: MediaQuery.of(context).size.width * 0.45,
              child: ClippedCategories("Bebidas", FontAwesomeIcons.wineBottle, 0.80),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.34,
              left: MediaQuery.of(context).size.width * 0.28,
              child: ClippedCategories("    Audio e\nHome theater", FontAwesomeIcons.headphones, 1.5),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.30,
              left: MediaQuery.of(context).size.width * 0.60,
              child: ClippedCategories("Beleza e\nperfumaria", FontAwesomeIcons.highlighter, 1.25),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.33,
              left: MediaQuery.of(context).size.width * 0.03,
              child: ClippedCategories("Eletroportateis", FontAwesomeIcons.blender, 1.25),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.27,
              left: MediaQuery.of(context).size.width * 0.001,
              child: ClippedCategories("Livros", FontAwesomeIcons.book, 0.75),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.48,
              left: MediaQuery.of(context).size.width * 0.05,
              child: ClippedCategories("Produtos\nimportados", FontAwesomeIcons.planeDeparture, 1.5),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.53,
              left: MediaQuery.of(context).size.width * 0.4,
              child: ClippedCategories("Para sua\nempresa", FontAwesomeIcons.building, 1.25),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.45,
              left: MediaQuery.of(context).size.width * 0.6,
              child: ClippedCategories("Filmes", FontAwesomeIcons.film, 1.0),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.57,
              left: MediaQuery.of(context).size.width * 0.67,
              child: ClippedCategories("Moda", FontAwesomeIcons.tshirt, 0.8),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.67,
              left: MediaQuery.of(context).size.width * 0.54,
              child: ClippedCategories("Alimentos", FontAwesomeIcons.hamburger, 1.5),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.65,
              left: MediaQuery.of(context).size.width * 0.29,
              child: ClippedCategories("Tablets", FontAwesomeIcons.tabletAlt, 0.8),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.74,
              left: MediaQuery.of(context).size.width * 0.33,
              child: ClippedCategories("Telefonia fixa", FontAwesomeIcons.phone,1.0),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.68,
              right: MediaQuery.of(context).size.width * 0.56,
              child: ClippedCategories("Brinquedos", FontAwesomeIcons.carSide,1.5),
            ),





          ],

        ),
      ),
    );
  }
}
