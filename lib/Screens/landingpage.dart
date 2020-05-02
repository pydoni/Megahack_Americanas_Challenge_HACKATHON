import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:megahackamericanas/Widgets/customWidgets.dart';

class LandingPage extends StatelessWidget {
  TextStyle navBarFont = TextStyle(
      fontFamily: 'Roboto', color: Colors.white, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.search,
              color: Colors.white,
            ),
            title: Text(
              'Pesquisar',
              style: navBarFont,
            ),
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.list,
              color: Colors.white,
            ),
            title: Text(
              'Categorias',
              style: navBarFont,
            ),
          ),
          BottomNavigationBarItem(
              icon: Image.asset(
                "assets/images/americanas_logo.png",
                height: 40,
              ),
              title: Container(
                height: 0.0,
              )),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.shoppingBasket,
              color: Colors.white,
            ),
            title: Text(
              'Carrinho',
              style: navBarFont,
            ),
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.th,
              color: Colors.white,
            ),
            title: Text(
              'Menu',
              style: navBarFont,
            ),
          ),
        ],
        onTap: (index) {},
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            Container(
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          ClippedCategories('Informatica',FontAwesomeIcons.laptop),
                          ClippedCategories('Brinquedos',FontAwesomeIcons.carSide),
                          ClippedCategories('Bebês',FontAwesomeIcons.baby),
                          ClippedCategories('filmes',FontAwesomeIcons.film),
                          ClippedCategories('Beleza',FontAwesomeIcons.highlighter),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          ClippedCategories('Eletroportateis',FontAwesomeIcons.blender),
                          ClippedCategories('Importados',FontAwesomeIcons.planeDeparture),
                          ClippedCategories('Alimentos',FontAwesomeIcons.hamburger),
                          ClippedCategories('Moveis e\ndecoração',FontAwesomeIcons.couch),
                          ClippedCategories('Moda',FontAwesomeIcons.tshirt),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Image.asset('assets/images/banner3_mercado1.png'),
            ),

            ProductGrid("Produtos Recomendados"),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 170,
                  margin: EdgeInsets.fromLTRB(20, 10, 5, 10),
                  child: Image.asset('assets/images/apoie_sua_comunidade_-_banner_sazonal.png'),
                ),
                Container(
                  width: 170,
                  margin: EdgeInsets.fromLTRB(5, 10, 20, 10),
                  child: Image.asset('assets/images/banner_prime.png'),
                ),
              ],
            ),

            ProductGrid("Baseado em seu historico de compras"),

            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 30),
              child: Image.asset('assets/images/banner3_SFS.png'),
            ),

          ],

        ),

        ),
      ),
    );
  }
}
