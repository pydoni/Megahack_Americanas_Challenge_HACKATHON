import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class navBarCustom extends StatelessWidget {
  TextStyle navBarFont = TextStyle(
      fontFamily: 'Roboto', color: Colors.white, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
      onTap: (index) {
        switch (index){
          case 4:
            return Navigator.of(context).pushNamed(
              '/menu',
              arguments: 1000,
            );

          default:
            return null;
        }
      },
    );
  }
}
