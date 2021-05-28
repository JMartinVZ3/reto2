import 'package:flutter/material.dart';
import 'package:reto_2/core/routes/routes.dart';
import 'package:reto_2/core/theme/light_theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Reto 2',
      initialRoute: 'home',
      routes: appRoutes,
      theme: appThemeData,
    );
  }
}
