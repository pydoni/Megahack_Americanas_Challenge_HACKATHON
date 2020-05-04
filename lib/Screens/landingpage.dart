import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:megahackamericanas/Components/productgrid.dart';
import 'package:megahackamericanas/Components/clippedcategories.dart';
import 'package:megahackamericanas/Components/navBar.dart';

class LandingPage extends StatelessWidget {
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
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width * 0.7,
                margin: EdgeInsets.fromLTRB(8, 20, 0, 5),
                child: Image.asset('assets/images/americanas-logo.png'),
              ),
              Container(
                height: 300,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            ClippedCategories(
                                'Informatica', FontAwesomeIcons.laptop, 1),
                            ClippedCategories(
                                'Brinquedos', FontAwesomeIcons.carSide, 1),
                            ClippedCategories(
                                'Bebês', FontAwesomeIcons.baby, 1),
                            ClippedCategories(
                                'filmes', FontAwesomeIcons.film, 1),
                            ClippedCategories(
                                'Beleza', FontAwesomeIcons.highlighter, 1),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            ClippedCategories(
                                'Eletroportateis', FontAwesomeIcons.blender, 1),
                            ClippedCategories('Importados',
                                FontAwesomeIcons.planeDeparture, 1),
                            ClippedCategories(
                                'Alimentos', FontAwesomeIcons.hamburger, 1),
                            ClippedCategories('Moveis e\ndecoração',
                                FontAwesomeIcons.couch, 1),
                            ClippedCategories(
                                'Moda', FontAwesomeIcons.tshirt, 1),
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
                    child: Image.asset(
                        'assets/images/apoie_sua_comunidade_-_banner_sazonal.png'),
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
