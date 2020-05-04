import 'package:flutter/material.dart';
import 'package:megahackamericanas/RouteManager/routemanager.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xffE50026),
      ),
      initialRoute: '/',
      onGenerateRoute: RouteManager.generateRoute,
    );
  }
}
