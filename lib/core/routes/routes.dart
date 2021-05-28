import 'package:flutter/material.dart';
import 'package:reto_2/features/home/pages/home_page.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  'home': (_) => HomePage(),
};
