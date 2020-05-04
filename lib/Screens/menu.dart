import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Menu extends StatelessWidget {
  TextStyle iconfont = TextStyle(
      fontFamily: 'Roboto',
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 17);
  TextStyle minorfont = TextStyle(
      fontFamily: 'Roboto',
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 11);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(0, 50, 0, 40),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(
                  '/',
                );
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    "assets/images/americanas_logo.png",
                    height: 70,
                  ),
                  Text(
                    "Início",
                    style: iconfont,
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: GridView.count(
              padding: EdgeInsets.all(20),
              shrinkWrap: true,
              crossAxisCount: 3,
              children: <Widget>[
                menuOption(
                  "Meus Pedidos",
                  FontAwesomeIcons.box,
                ),
                menuOption(
                  "Notificações",
                  FontAwesomeIcons.solidBell,
                ),
                menuOption(
                  "Favoritos",
                  FontAwesomeIcons.solidHeart,
                ),
                menuOption("Leitor de código\n      de barras",
                    FontAwesomeIcons.barcode),
                menuOption(
                  "   Lojas\npróximas",
                  FontAwesomeIcons.storeAlt,
                ),
                menuOption(
                  "Meus vales",
                  FontAwesomeIcons.ticketAlt,
                ),
                menuOption(
                  "Aqui tem\ndesconto",
                  FontAwesomeIcons.percentage,
                ),
                menuOption(
                  "     Cartão\nAmericanas",
                  FontAwesomeIcons.solidCreditCard,
                ),
                menuOption(
                  "Mensagens",
                  FontAwesomeIcons.solidEnvelope,
                ),
              ],
            ),
          ),
          lineDivider(),
          Text(
            "Venda com a gente",
            style: minorfont,
          ),
          lineDivider(),
          Text(
            "Atendimento pelo telefone",
            style: minorfont,
          ),
          lineDivider(),
          Text(
            "Compre pelo telefone",
            style: minorfont,
          ),
          lineDivider(),
          Text(
            "Regras compras online",
            style: minorfont,
          ),
          lineDivider(),
          Text(
            "Regras descontos Lojas Americanas",
            style: minorfont,
          ),
          lineDivider(),
          Text(
            "Sobre o app",
            style: minorfont,
          ),
          lineDivider(),
        ],
      ),
    );
  }

  Container lineDivider() {
    return Container(
      color: Colors.white,
      height: 3,
      width: 250,
      margin: EdgeInsets.fromLTRB(0, 2, 0, 2),
    );
  }

  Column menuOption(name, fai) {
    return Column(
      children: <Widget>[
        FaIcon(
          fai,
          color: Colors.white,
          size: 40,
        ),
        Text(
          name,
          style: iconfont,
        ),
      ],
    );
  }
}
