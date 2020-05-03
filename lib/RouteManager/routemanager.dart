import 'package:flutter/material.dart';
import '../Screens/landingpage.dart';
import '../Screens/menu.dart';
import '../Screens/categories.dart';

class RouteManager {
  static Route<dynamic> generateRoute(RouteSettings settings) {

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => LandingPage());
      case '/menu':
        return MaterialPageRoute(builder: (_) => Menu());
      case '/categories':
        return MaterialPageRoute(builder: (_) => Categories());

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}